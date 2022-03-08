import "package:flutter/material.dart";
import 'package:flutter_wppb/model/tourism_place.dart';
import "DetailPage.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Wisata Surabaya")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(
                      place: place,
                    );
                  }));
                },
                child: listItem(place));
          },
          itemCount: tourismPlaceList.length,
        ));
  }

  Widget listItem(TourismPlace place) {
    return Card(
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(flex: 1, child: Image.asset(place.imageAsset)),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
            )),
      ]),
    );
  }
}
