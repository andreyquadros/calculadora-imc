import 'package:flutter/material.dart';
import 'package:imc_test_app/model/classes/Gauges.dart';
import 'package:imc_test_app/view/elements/captions_element.dart';
import 'package:imc_test_app/view/elements/sfradialgauges_element.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeRangeScreen extends StatefulWidget {
  const GaugeRangeScreen({Key? key}) : super(key: key);

  @override
  State<GaugeRangeScreen> createState() => _GaugeRangeScreenState();
}

class _GaugeRangeScreenState extends State<GaugeRangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SfRadialGaugesElement(imc: 30,),
              CaptionsElement(),
            ],
          ),
        ),
      ),
    );
  }
}
