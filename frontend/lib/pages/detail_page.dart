import 'package:flutter/material.dart';
import 'package:flutter_wppb/model/Tours.dart';
import 'package:flutter_wppb/pages/form_edit_tour.dart';
import 'package:flutter_wppb/services/TourService.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail-tour';

  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final tour = ModalRoute.of(context)!.settings.arguments as DataTours;
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_arrow,
        overlayOpacity: 0.5,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.edit),
              label: "Edit Tour",
              onTap: () {
                Navigator.pushNamed(context, FormEditTour.routeName,
                    arguments: tour);
              }),
          SpeedDialChild(
              child: const Icon(Icons.delete),
              label: "Delete Tour",
              onTap: () async {
                await TourService().deleteTour(tour.slug).then((value) {
                  Navigator.pushReplacementNamed(context, '/');
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('You have successfully delete a tour')));
                });
              }),
        ],
        spacing: 20,
        childMargin: const EdgeInsets.symmetric(vertical: 20),
      ),
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Stack(fit: StackFit.loose, children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "http://10.206.0.54:8000/storage/" + tour.imageCover),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 236),
            height: 214,
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
              stops: [
                0.30,
                0.92,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                const Color.fromARGB(200, 0, 0, 0),
                Color.fromARGB(0, 255, 255, 255),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              margin: const EdgeInsets.only(top: 310),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tour.name,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    tour.city,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              margin: const EdgeInsets.only(top: 390),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deskripsi",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff1F1449),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    tour.description,
                    style: GoogleFonts.poppins(
                      color: const Color(0xff1F1449),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lokasi",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff1F1449),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    tour.location,
                    style: GoogleFonts.poppins(
                      color: const Color(0xff1F1449),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Harga Tiket",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff1F1449),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rp. ${tour.price.formatedPrice}",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff1F1449),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
