import 'package:flutter/material.dart';
import 'package:flutter_wppb/model/Tours.dart';
import 'package:flutter_wppb/services/TourService.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FormEditTour extends StatefulWidget {
  static const routeName = '/tour-update';

  const FormEditTour({Key? key}) : super(key: key);

  @override
  State<FormEditTour> createState() => _FormEditTourState();
}

class _FormEditTourState extends State<FormEditTour> {
  List<XFile>? _imageFileList;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  set _imageFile(XFile? value) {
    _imageFileList = value == null ? null : <XFile>[value];
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    setState(() {
      _imageFile = pickedFile;
    });
  }

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final tour = ModalRoute.of(context)!.settings.arguments as DataTours;

    if (tour != null) {
      _nameController.text = tour.name;
      _descController.text = tour.description;
      _cityController.text = tour.city;
      _locationController.text = tour.location;
      _priceController.text = tour.price.unformattedPrice.toString();
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: const Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Update Tour",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff1F1449),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name Tour",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _nameController,
                        style: const TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(18)),
                            fillColor:
                                const Color.fromARGB(106, 199, 199, 199)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description Place",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _descController,
                        style: const TextStyle(fontSize: 18),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(18)),
                            fillColor:
                                const Color.fromARGB(106, 199, 199, 199)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("City Place",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _cityController,
                        style: const TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Ponorogo",
                            hintStyle: const TextStyle(
                                color:
                                    const Color.fromARGB(200, 158, 158, 158)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(18)),
                            fillColor:
                                const Color.fromARGB(106, 199, 199, 199)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Detail Location",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _locationController,
                        style: const TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            hintText:
                                "Kecamatan Siman, Kabupaten Ponorogo, Jawa Timur",
                            hintStyle: const TextStyle(
                                color:
                                    const Color.fromARGB(200, 158, 158, 158)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(18)),
                            fillColor:
                                const Color.fromARGB(106, 199, 199, 199)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price Ticket Tour",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _priceController,
                        style: const TextStyle(fontSize: 18),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "25000",
                            hintStyle: const TextStyle(
                                color:
                                    const Color.fromARGB(200, 158, 158, 158)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(18)),
                            fillColor:
                                const Color.fromARGB(106, 199, 199, 199)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Image Cover",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff9698A9),
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            _openGallery(context);
                          },
                          icon: const Icon(Icons.image),
                          label: const Text("Add Image")),
                      Card(
                        child: (_imageFileList == null)
                            ? Image.network("http://10.206.0.54:8000/storage/" +
                                tour.imageCover)
                            : Image.file(
                                File(_imageFileList!.first.path),
                                width: double.infinity,
                                height: 250,
                                fit: BoxFit.contain,
                              ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      print(_nameController.text);

                      Map<String, String> body = {
                        "name": _nameController.text,
                        "description": _descController.text,
                        "city": _cityController.text,
                        "location": _locationController.text,
                        "ticket_price": _priceController.text,
                      };

                      await TourService()
                          .updateTour(
                              body,
                              tour.slug,
                              int.parse(_imageFileList!.length.toString()) != 0
                                  ? _imageFileList?.first.path
                                  : null)
                          .then((value) => ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text(
                                      'You have successfully update a tour'))));

                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Update"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(15)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
