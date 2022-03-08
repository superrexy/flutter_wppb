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
                      children: [
                        const Icon(Icons.calendar_month_rounded),
                        Text(place.hariBuka),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Icon(Icons.access_time),
                        Text(place.jamBuka),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Icon(Icons.attach_money),
                        Text(place.price),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                place.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Container(
                height: 150,
                margin: const EdgeInsets.only(top: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(4),
                        child: Image.network(place.images[index]));
                  }),
                  itemCount: place.images.length,
                ))
          ]),
        ));
  }
}
