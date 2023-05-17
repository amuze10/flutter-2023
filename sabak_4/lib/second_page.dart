import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Center(child: Text(
        "Second Page",style: TextStyle(color: Colors.black),
        ),
        ),
      backgroundColor: Colors.yellow,
      ),
    
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
        const Text("I'm Rich", style:
        TextStyle(
          fontSize: 48, fontFamily: "Sofia-Regular"),
        ),
        Container(width: 300,
        height: 300,
          child: Image.asset("assets/images/brilliant.png"),
          ),
        ],
        ),
      ),
      );
  }
}