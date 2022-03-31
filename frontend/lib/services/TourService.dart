import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import '../model/Tours.dart';

class TourService {
  static const String _baseUrl = 'http://10.206.0.54:8000/api/';

  Future<Tours> getAllTours() async {
    final response = await http.get(Uri.parse(_baseUrl + "tours"));
    if (response.statusCode == 200) {
      return Tours.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future createTour(Map<String, dynamic> body, String filepath) async {
    Dio dio = new Dio();
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'multipart/form-data'
    };

    String name = filepath.split('/').last;

    var data = FormData.fromMap({
      "name": body['name'],
      "description": body['description'],
      "city": body['city'],
      "location": body['location'],
      "ticket_price": body['ticket_price'],
      "image_cover": await MultipartFile.fromFile(filepath, filename: name),
    });

    await dio
        .postUri(Uri.parse(_baseUrl + "tours"),
            data: data,
            options: Options(
              followRedirects: false,
            ))
        .then((response) => print(response))
        .catchError((error) => print(error));
  }

  Future updateTour(
      Map<String, dynamic> body, String slug, String? filepath) async {
    Dio dio = new Dio();
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'multipart/form-data'
    };

    FormData data;

    if (filepath != '') {
      String name = filepath!.split('/').last;
      data = FormData.fromMap({
        "name": body['name'],
        "description": body['description'],
        "city": body['city'],
        "location": body['location'],
        "ticket_price": body['ticket_price'],
        "image_cover": await MultipartFile.fromFile(filepath, filename: name),
      });
    } else {
      data = FormData.fromMap({
        "name": body['name'],
        "description": body['description'],
        "city": body['city'],
        "location": body['location'],
        "ticket_price": body['ticket_price'],
      });
    }

    await dio
        .postUri(Uri.parse(_baseUrl + "tours/" + slug + "?_method=PUT"),
            data: data,
            options: Options(
              followRedirects: false,
            ))
        .then((response) => print(response))
        .catchError((error) => print(error));
  }

  Future<bool> deleteTour(String slug) async {
    final response = await http.delete(Uri.parse(_baseUrl + "tours/" + slug));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
