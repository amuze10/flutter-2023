import 'dart:math';

import 'package:flutter/material.dart';
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
   int firstDice = 1;
   int secondDice = 1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(backgroundColor: Colors.white,
        title: const Center(child: Text("Тапшырма 5", style: TextStyle(color: Colors.black),
        )),
     elevation: 0,
      ),
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      if(firstDice == 4 && secondDice == 6)
      Container(
        height: 40,
        width: 250,
        color: Colors.black, child: const Center(
          child: Text("УРААААА, 4 ЖАНА 6 САНДАРЫ ЧЫКТЫ!", style: TextStyle(
          color: Colors.white),
          ),
        ),
        ),
        const SizedBox(height: 25,),
  
    Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Row(children:  [
  
        Expanded(
          child: InkWell(
            //басуу 
            onTap:(){
              //жандандыруу
          setState(() {
          firstDice = Random().nextInt(6) +1;
          secondDice = Random().nextInt(6) +1;
           });
        print(firstDice);
        }
        ,
          child: Image.asset("images/dice$firstDice.png"))),
  
        const SizedBox(width:25 ,),
  
        Expanded(child: InkWell(onTap: () {
          setState(() {
            firstDice = Random().nextInt(6) +1;
            secondDice = Random().nextInt(6) +1;
          });
          
        },
          child: Image.asset("images/dice$secondDice.png")))
  
      ],
  
      ),
  
    )
  
    
  
  ],),
),
    );
    
  }
}