import 'package:conversor_moedas/app/componentes/box_moeda.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 50),
              const BoxMoeda(),
              const SizedBox(height: 10),
              const BoxMoeda(),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
