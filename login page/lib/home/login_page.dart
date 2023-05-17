

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:for_loop2/home/user.page.dart';
import 'package:for_loop2/model.dart';


List studentter = <Student>[
  aybek,aynura,akyl, altyn, aryn
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String? _name;
  String? _gmail;

  void controlNameEmail (String name, String email){
    int index = 0;
  for (final student in studentter){
    if (name == student.name && email ==student.email) {
      index++;
      debugPrint ("KOSH KELINIZ: ${student.name}");
      Navigator.push(context, MaterialPageRoute(builder: (context) =>UserPage(student: student),
      ),
      );
      // брейк токтотуу
      break;
    }else{
      if(index == studentter.length){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Sizdin atynyz tuura emes"),),);
      print("Sizdin atynyz jana pochtanyz tuura emes");
      }
    }
  }
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: const Color(0xFFD1C1E9),
      appBar: AppBar(centerTitle: true,
        title: Text("LoginPage".toUpperCase()),
      ),
      body: Center(
        child: Container(decoration: const BoxDecoration(image: DecorationImage(
          image:  NetworkImage(
            "https://images.unsplash.com/photo-1553634551-6d1e9f22afee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80"),
            fit: BoxFit.cover,
            ),
            ),
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent.withOpacity(0.2)),
            width: double.infinity,
            height: double.infinity,
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: 
                const [FlutterLogo(
                  
                size: 100,
              ),
              ]
              ),
              const Text("Welcome!", style: TextStyle(color: Colors.black87,
                fontSize: 35, fontWeight: FontWeight.w500),),
              const Text("Keep your data safe", style: TextStyle(color: Colors.black87)
              ),
                Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextField(
                  onChanged: (String value) {
                _name = value;
                  debugPrint("валуе иштеди $value");
                  debugPrint("валуе иштеди $_name");
                  
                },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
        
                  ),
             ),
                  
                 ),
               Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextField(onChanged: (String value){
                  _gmail = value;
                  print("валуе иштеди $value");
                  print("валуе иштеди $_gmail");
                },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Gmail",
                  ),
                   ),
                    ),
                 const SizedBox(height: 20,),
             Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(onPressed: (){
                controlNameEmail(_name!, _gmail!);
              }, child: 
              const Text("login"))
            
                 ),
                ],
               ),
              ),
             ),
           ),
         );
       }
     }