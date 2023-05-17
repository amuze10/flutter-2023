import 'package:flutter/material.dart';
import 'package:sabak1/ekinchibet.dart';

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
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //озгоруу
int index = 0;
  @override
  Widget build(BuildContext context) {
    //ак барак
    return  Scaffold(
      backgroundColor: Colors. white,
      //панель
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Тапшырма 1",
             style: TextStyle(color: Colors. black),
          ),
        ),
        // тенди кетируу
        elevation: 0
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            //колонка
            child: Column(
              mainAxisAlignment:
               MainAxisAlignment.center,
              children: [
                //контейнер
              Container(
            
          
                // экрандын аягына чейин
              width: double.infinity,
              height: 30,      
              //декорация
            decoration: BoxDecoration(color: Colors.grey,
            borderRadius: BorderRadius.circular(8)),
          child:  Center(
            child: Text(
              "Сан: $index"),
          ),
              ),
               const SizedBox(
                height: 20,
                 ),              
            
                   Row(
                    //ровду экрандын ортосуна алып келуу
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){
                      //жандандыруу
                      setState(() {
                        //кемитуу
                        index --;
                        
                      });
                    }, child: const Icon(Icons.remove)),
               const SizedBox(width: 15,),
                  ElevatedButton(
                    onPressed: (){
                    setState(() {
                      //кошуу
                      index ++;
                      
                      
                    });
                 
                  }, 
                  child: const Icon(Icons.add))
                 
                  ],),
                  const SizedBox(height: 10,),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>   EkinchiBet(count: index,)));
                    }, icon: 
                    const Icon(
                      Icons.next_plan, 
                      size: 50, 
                      color: Colors.red,))
                ],
             ),
         ),
      ),
    );
  }
}