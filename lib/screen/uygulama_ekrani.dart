import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class UygulamaIcerigi extends StatelessWidget {
  UygulamaIcerigi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: DavulIcerigi()),
    );
  }
}

class DavulIcerigi extends StatelessWidget {
  DavulIcerigi({super.key});
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      butonGrubu("bip", "bongo", Colors.red, Colors.amber),
      butonGrubu("clap1", "clap2", Colors.blueAccent, Colors.green),
      butonGrubu("clap3", "crash", Colors.tealAccent, Colors.orange),
      butonGrubu("how", "oobah", Colors.brown, Colors.pink),
      butonGrubu("ridebel", "woo", Colors.lime, Colors.blueGrey),
    ]);
  }

  Expanded butonGrubu(String ses1, String ses2, Color renk1, Color renk2) {
    return Expanded(
      child: Row(
        children: [
          butonOlustur(ses1, renk1),
          butonOlustur(ses2, renk2),
        ],
      ),
    );
  }

  Expanded butonOlustur(String sesAdi, Color renk) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory, padding: EdgeInsets.all(2)),
        onPressed: () async =>
            await player.play(AssetSource('audio/$sesAdi.wav')),
        child: Container(
          color: renk,
        ),
      ),
    );
  }
}
