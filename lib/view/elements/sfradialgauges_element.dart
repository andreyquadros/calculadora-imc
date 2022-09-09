import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../model/classes/Gauges.dart';

class SfRadialGaugesElement extends StatefulWidget {
  final double imc;
  const SfRadialGaugesElement({Key? key, required this.imc}) : super(key: key);

  @override
  State<SfRadialGaugesElement> createState() => _SfRadialGaugesElementState();
}

class _SfRadialGaugesElementState extends State<SfRadialGaugesElement> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
        axes:[
          RadialAxis(
            showLabels: false,
            showAxisLine: false,
            showTicks: false,
            minimum: 12.5,
            maximum: 47.9,
            ranges: [
              ImcGaugeRange(color: Colors.lightBlueAccent, start: 12.5, end: 18.5, label: "I"),
              ImcGaugeRange(color: Colors.green, start: 18.5, end: 24.9, label: "II"),
              ImcGaugeRange(color: Colors.yellow, start: 24.9, end: 29.9, label: "III"),
              ImcGaugeRange(color: Colors.orangeAccent, start: 29.9, end: 34.9, label: "IV"),
              ImcGaugeRange(color: Colors.deepOrange, start: 34.9, end: 39.9, label: "V"),
              ImcGaugeRange(color: Colors.red, start: 39.9, end: 47.9, label: "VI"),
            ],
            pointers: [
              NeedlePointer(
                animationDuration: 3000,
                value: widget.imc,
                enableAnimation: true,
              )
            ],
          )
        ]
    );
  }
}
