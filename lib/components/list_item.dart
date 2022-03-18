import "package:flutter/material.dart";
import 'package:flutter_wppb/model/tourism_place.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  // ignore: use_key_in_widget_constructors
  const ListItem(
      {required this.place,
      required this.isDone,
      required this.onCheckboxClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    Checkbox(
                      value: isDone,
                      onChanged: onCheckboxClick,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(place.location),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
