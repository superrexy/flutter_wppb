import 'package:flutter/material.dart';
import 'package:flutter_wppb/model/Tours.dart';
import 'package:flutter_wppb/pages/form_create_tour.dart';
import 'package:flutter_wppb/services/TourService.dart';
import 'package:flutter_wppb/widget/BigCard.dart';
import 'package:flutter_wppb/widget/SmallCard.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late Future<Tours> _tours;

  @override
  void initState() {
    super.initState();
    _tours = TourService().getAllTours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, FormCreateTour.routeName);
          },
          child: const Icon(Icons.add),
          tooltip: "Add new Tour"),
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Let's enjoy your\nVacation",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff1F1449),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              FutureBuilder(
                future: _tours,
                builder: (context, AsyncSnapshot<Tours> snapshot) {
                  var state = snapshot.connectionState;
                  if (state != ConnectionState.done) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasData) {
                      return SizedBox(
                        height: 323,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var tour = snapshot.data?.data[index];
                            return BigCard(tour: tour!);
                          },
                          itemCount: snapshot.data?.data.length,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else {
                      return const Text('');
                    }
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "New This Year",
                style: GoogleFonts.poppins(
                    color: const Color(0xff1F1449),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              FutureBuilder(
                future: _tours,
                builder: (context, AsyncSnapshot<Tours> snapshot) {
                  var state = snapshot.connectionState;
                  if (state != ConnectionState.done) {
                    return const Center(
                      child: const CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasData) {
                      return Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            var tour = snapshot.data?.data[index];
                            return SmallCard(tour: tour!);
                          },
                          itemCount: snapshot.data?.data.length,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else {
                      return const Text('');
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
