import 'package:flutter/material.dart';
import 'package:imc_test_app/view/elements/captions_element.dart';
import 'package:imc_test_app/view/elements/forms_imc_element.dart';


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
        title: const Text("Calculadora de IMC"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              FormsIMCElement(),
              CaptionsElement(),
            ],
          ),
        ),
      ),
    );
  }
}
