import 'package:flutter/material.dart';
import 'package:universe/universe.dart';

class NLSMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return U.NLSMap(
      center: [51.555158, -0.108343],
      zoom: 16,
    );
  }
}
