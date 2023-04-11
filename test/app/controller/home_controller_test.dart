import 'package:conversor_moedas/app/controller/home_controller.dart';
import 'package:conversor_moedas/app/model/moeda_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter de dolar para real', () {
    toText.text = '1.0';
    homeController.deMoeda = MoedaModel('Real', 1.0, 0.18, 0.15, 0.000016);
    homeController.paraMoeda = MoedaModel('Dolar', 5.65, 1.0, 0.85, 0.000088);
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
