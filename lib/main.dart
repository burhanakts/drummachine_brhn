import 'package:drummachine_brhn/screen/uygulama_ekrani.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DrumMachine_BRHN());

class DrumMachine_BRHN extends StatelessWidget {
  const DrumMachine_BRHN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: UygulamaIcerigi(),
    );
  }
}
