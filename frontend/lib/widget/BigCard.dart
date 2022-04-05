import 'package:flutter/material.dart';
import 'package:flutter_wppb/model/Tours.dart';
import 'package:flutter_wppb/pages/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class BigCard extends StatelessWidget {
  final DataTours tour;
  const BigCard({Key? key, required this.tour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName, arguments: tour);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 323,
        width: 200,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: NetworkImage(tour.imageCover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              tour.name,
              style: GoogleFonts.poppins(
                  color: const Color(0xff1F1449),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              tour.city,
              style: GoogleFonts.poppins(
                  color: const Color(0xff9698A9),
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
