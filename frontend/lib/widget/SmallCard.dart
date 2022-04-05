import 'package:flutter/material.dart';
import 'package:flutter_wppb/model/Tours.dart';
import 'package:flutter_wppb/pages/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallCard extends StatelessWidget {
  final DataTours tour;

  const SmallCard({Key? key, required this.tour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName, arguments: tour);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(tour.imageCover),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tour.name,
                    style: GoogleFonts.poppins(
                        color: const Color(0xff1F1449),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                Text(tour.city,
                    style: GoogleFonts.poppins(
                        color: const Color(0xff9698A9),
                        fontSize: 14,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
