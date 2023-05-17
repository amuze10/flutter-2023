import 'package:flutter/material.dart';

class ForExampleState
 extends StatelessWidget {
  const ForExampleState
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text('ForExample'),
      ),
      body: Column(children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        )
      ],),
    );
  }
}