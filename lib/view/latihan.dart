import 'package:flutter/material.dart';

class latihan extends StatefulWidget {
  const latihan({Key? key}) : super(key: key);

  @override
  _latihanState createState() => _latihanState();
}

class _latihanState extends State<latihan> {
  int _counter = 1;
  String _text = "Genap : ";

  void _incrementCounter() {
    setState(() {
      _counter++;

      _text = "Genap : ";

      for (int i = 1; i <= _counter; i++) {
        if (i % 3 == 0 && i % 2 == 0) {
          _text += '${i}, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Latihan',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  '$_text',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
