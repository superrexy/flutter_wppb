import "package:flutter/material.dart";
import 'package:flutter_wppb/model/tourism_place.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(place.name),
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Image.asset(place.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        Icon(Icons.calendar_month_rounded),
                        Text("Open Everyday"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(Icons.access_time),
                        Text("08:00 - 16:00"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        Icon(Icons.attach_money),
                        Text("Rp 10.000,-"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: const Text(
                "Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintaned. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]),
        ));
  }
}
