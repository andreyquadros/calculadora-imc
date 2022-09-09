import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:imc_test_app/modelview/calculate_imc.dart';
import 'package:imc_test_app/view/elements/sfradialgauges_element.dart';

import '../../modelview/casting_editing_controller.dart';

class FormsIMCElement extends StatefulWidget {
  const FormsIMCElement({Key? key}) : super(key: key);

  @override
  State<FormsIMCElement> createState() => _FormsIMCElementState();
}

class _FormsIMCElementState extends State<FormsIMCElement> {

  TextEditingController _peso = TextEditingController();
  TextEditingController _altura = TextEditingController();
  double _peso_cast = 0.0;
  double _altura_cast = 0.0;
  double _imc = 0.0;


  void execute_casting() {
    if(_peso.text.isNotEmpty && _altura.text.isNotEmpty) {
      _peso_cast = casting_editing_controllers(_peso.text.toString());
      _altura_cast = casting_editing_controllers(_altura.text.toString());
      print("Peso cast: ${_peso_cast} // Altura Cast: ${_altura_cast}");
    }
  }

  @override
  void dispose() {
    _peso.dispose();
    _altura.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfRadialGaugesElement(imc: _imc,),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextFormField(
            inputFormatters: [
              CurrencyTextInputFormatter(decimalDigits: 2, symbol: '',)],
            keyboardType: TextInputType.number,
            controller: _peso,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.monitor_weight),
              hintText: "Qual o seu peso? ",
              fillColor: Colors.white70,
              hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontFamily: "SFProText-Regular"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: TextFormField(
            inputFormatters: [
              CurrencyTextInputFormatter(decimalDigits: 2, symbol: '',)],
            keyboardType: TextInputType.number,
            controller: _altura,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.height),
              hintText: "Qual a sua altura? ",
              fillColor: Colors.white70,
              hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontFamily: "SFProText-Regular"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Container(
              width: 350,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  execute_casting();
                  _imc = calculate_imc(_altura_cast, _peso_cast);
                });

              }, child: const Text('Calcular IMC'))),
        )
      ],
    );
  }
}
