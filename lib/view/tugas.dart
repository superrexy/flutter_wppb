import 'package:flutter/material.dart';

class tugas extends StatefulWidget {
  const tugas({Key? key}) : super(key: key);

  @override
  _tugasState createState() => _tugasState();
}

class _tugasState extends State<tugas> {
  int _counter = 1;
  int _prima = 0;
  String _text = "Prima : ";

  void _incrementCounter() {
    setState(() {
      _counter++;

      _text = "Prima : ";

      for (int i = 1; i <= _counter; i++) {
        _prima = 0;
        for (int n = 1; n <= i; n++) {
          if (i % n == 0) {
            _prima++;
          }
        }

        if (_prima == 2) {
          _text += "${i}, ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bilangan Prima",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "$_text",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        tooltip: "Increment",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
