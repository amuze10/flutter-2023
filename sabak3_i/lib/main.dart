import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const IamRich()
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  //переопределитель
  @override
  //билт -куруу
  Widget build(BuildContext context) {
    //ретурн кайтаруу
    return 
    //ак барак
     Scaffold(
      //бекграундколор- тусу
      backgroundColor: Colors.yellow,
      //панель
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text("Тапшырма 3",
          style: TextStyle(color: Colors. black)
           ),
        ),
      ),
      body: Center(
        //колумн -колонка
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            //тект
          const Text("I'm Rich"
          , 
          //стил
          style:
          //тексттин стили
           TextStyle
           //фонтсайз бул шрифттин размери
           (fontSize: 48,
           //семейтсво шрифтоф
          fontFamily: "sofia-Regular"),
          ),
          //каробканын размери
          SizedBox(
            //длина
          width: 200,
          //высота
          height: 200,
            child:
            //сурот жуктоо 
             Image.asset(
              "assets/images/brilliant.png",)),        ],),
      ),
    );
  }
}