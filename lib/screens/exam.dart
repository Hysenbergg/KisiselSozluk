import 'package:flutter/material.dart';

class test extends StatelessWidget {
  test({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
children:[
  TextButton(
  style: TextButton.styleFrom(
    primary: Colors.blue,
    onSurface: Colors.red,
  ),
  onPressed: press,
  child: Row(
    children: [
      Text('TextButton'),
       Text('TextButton'),
    ],
  ),
  
),  TextButton(
  style: TextButton.styleFrom(
    primary: Colors.blue,
    onSurface: Colors.red,
  ),
  onPressed: press,
  child: Text('TextButton'),
  
)
] 
    );
  }
  press(){
    print("press calıstı");
  }
}