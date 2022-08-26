import 'package:flutter/material.dart';

class CaptionsElement extends StatelessWidget {
  const CaptionsElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("LEGENDAS:"),
        Text("I - Abaixo do Peso Normal - (12.5 - 18.5)"),
        Text("II - Peso Normal - (18.5 - 24.9)"),
        Text("III - Excesso de Peso - (24.9 - 29.9)"),
        Text("IV - Obesidade Classe I - (29.9 - 34.9)"),
        Text("V - Obesidade Classe II - (34.9 - 39.9)"),
        Text("VI - Obesidade Classe III - (39.9 - 47.9)"),
      ],
    );
  }
}
