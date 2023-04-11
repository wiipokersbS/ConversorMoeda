import 'package:flutter/cupertino.dart';

import '../model/moeda_model.dart';

class HomeController {
  List<MoedaModel>? moedas;
  final TextEditingController toText;
  final TextEditingController fromText;
  MoedaModel? deMoeda;
  MoedaModel? paraMoeda;

  HomeController({required this.toText, required this.fromText}) {
    moedas = MoedaModel.getMoeda();
    deMoeda = moedas![0];
    paraMoeda = moedas![1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double total = 0;

    if (paraMoeda!.nome == 'Real') {
      total = value * paraMoeda!.real;
    } else if (paraMoeda!.nome == 'Dolar') {
      total = value * paraMoeda!.dolar;
    } else if (paraMoeda!.nome == 'Euro') {
      total = value * paraMoeda!.euro;
    } else if (paraMoeda!.nome == 'Bitcoin') {
      total = value * paraMoeda!.bitcoin;
    }
    fromText.text = text.toString();
  }
}
