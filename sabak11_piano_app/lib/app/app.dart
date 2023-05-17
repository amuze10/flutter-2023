import 'package:flutter/material.dart';
import 'package:sabak11_piano_app/demo/demo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
        
      
      
      home: const DemoScreen()
    );
  }
}