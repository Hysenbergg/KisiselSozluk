import 'package:flutter/material.dart';
import 'dart:math';

class test extends StatelessWidget {
  test({Key? key}) : super(key: key);

  List<String> ingilizce = ["computer", "pencil", "fish","bottle","oil","apple","ship","sword","mouse"];
  List<String> turkce = ["bilgisayar","kalem","balık","sise","yag","elma","gemi","kılıc","fare"];

  void rastgele(){
    var rng = Random();
    for (var i = 0; i < 10; i++) {
      var secim = rng.nextInt(ingilizce.length);
      print(ingilizce[secim] + ": " + turkce[secim]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'İngilizce Kelime',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Turkce Karsiligini Giriniz',
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.red,
        ),
        onPressed: rastgele,
        child: Text('Rastgele'),
      ),
      SnackBarPage(),
    ]);
  }

  press() {
    print("press calıstı");
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Soruyu Doğru Cevapladınız.'),
            action: SnackBarAction(
              label: 'Kapat',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Kontrol Et'),
      ),
    );
  }


}
