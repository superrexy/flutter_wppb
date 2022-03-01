import "package:flutter/material.dart";

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Prak 3 Flutter Layout"),
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Image.asset('assets/images/kapal.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: const Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
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
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                        "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/kapal_2.JPG'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/kapal_3.jpeg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/kapal_4.jpg'),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
