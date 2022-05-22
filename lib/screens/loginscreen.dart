import 'package:flutter/material.dart';


class loginEkrani extends StatelessWidget {
  const loginEkrani();
  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.red,
        ),
        onPressed: press,
        child: Row(
          children: [
            Text('Deneme'),
          ],
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.red,
        ),
        onPressed: press,
        child: Text('TextButton'),
      )
    ]);
  }

  press() {
    print("press calıstı");
  }
}
