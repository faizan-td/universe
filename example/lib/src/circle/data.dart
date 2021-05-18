import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universe/universe.dart';

class CircleWithDataMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return U.OpenStreetMap(
      center: [-6.170039, 106.8241],
      zoom: 15,
      onReady: () => print('Map ready!'),
      // circle layer with data, showing the data to snackbar when it's tapped
      circles: U.CircleLayer(
        [-6.170039, 106.8241],
        radius: 180,
        stroke: true,
        strokeWidth: 0.75,
        fill: true,
        data: 'Bicycle Palace',
        onTap: (position, data) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Welcome to $data')));
        },
      ),
    );
  }
}
