// To parse this JSON data, do
//
//     final tours = toursFromJson(jsonString);

import 'dart:convert';

Tours toursFromJson(String str) => Tours.fromJson(json.decode(str));

String toursToJson(Tours data) => json.encode(data.toJson());

class Tours {
  Tours({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  List<DataTours> data;

  factory Tours.fromJson(Map<String, dynamic> json) => Tours(
        status: json["status"],
        message: json["message"],
        data: List<DataTours>.from(
            json["data"].map((x) => DataTours.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DataTours {
  DataTours({
    required this.name,
    required this.slug,
    required this.description,
    required this.city,
    required this.location,
    required this.imageCover,
    required this.price,
  });

  String name;
  String slug;
  String description;
  String city;
  String location;
  String imageCover;
  Price price;

  factory DataTours.fromJson(Map<String, dynamic> json) => DataTours(
        name: json["name"],
        slug: json["slug"],
        description: json["description"],
        city: json["city"],
        location: json["location"],
        imageCover: json["image_cover"],
        price: Price.fromJson(json["price"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "description": description,
        "city": city,
        "location": location,
        "image_cover": imageCover,
        "price": price.toJson(),
      };
}

class Price {
  Price({
    required this.formatedPrice,
    required this.unformattedPrice,
  });

  String formatedPrice;
  int unformattedPrice;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        formatedPrice: json["formated_price"],
        unformattedPrice: json["unformatted_price"],
      );

  Map<String, dynamic> toJson() => {
        "formated_price": formatedPrice,
        "unformatted_price": unformattedPrice,
      };
}
