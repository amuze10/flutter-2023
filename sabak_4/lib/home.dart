import 'package:flutter/material.dart';
import 'package:sabak_4/second_page.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 bool isActive = false;

  
 String? phoneNumber;
 String? email;
void ishtoo(){
  
    if (phoneNumber!.isEmpty || email!.isEmpty){
     isActive =false; 
  }else{
    isActive =true;
    }
    setState(() {}
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Тапшырма 4",
            style: TextStyle(
              color: Colors.black),

          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
           MainAxisAlignment.center,
          children:  [
           const Text(
            "Aizada Atabekova",
           style: TextStyle(color: Color(0xffF7F9F9),
            fontSize: 48,
            fontFamily: "Pacifico-Regular"),
            ),
           const Text(
            "Flatter developer",
           style: TextStyle(
            color: Color(0xffF7F9F9),
            fontSize: 28),),
            const Divider(
              thickness:2,
              indent: 57,
              endIndent: 47.5,
              color: Colors.white ,
            ),
            const SizedBox(height: 23.5,),
           Container(color: Colors.white,
           child: TextFormField(style:
            const TextStyle(fontSize: 20, color: Color(0xff056C5C),fontWeight: FontWeight.w600),
           onChanged: (String? value){
            phoneNumber = value;
            ishtoo();
           debugPrint("value: $value");
           debugPrint("phoneNumber: $phoneNumber");
           },
            decoration: const InputDecoration(focusColor: Colors.white,
           prefixIcon: Padding(
             padding: EdgeInsets.symmetric(horizontal: 40),
             child: Icon(Icons.phone_outlined, 
             color: Color(0xff056C5C),
             ),
           ),
           ),
           ),
           ),
           const SizedBox(
            height: 20,
           ),
             Container(color: Colors.white,
           child: TextFormField(style:
            const TextStyle(fontSize: 20,color: Color(0xff056C5C),
            fontWeight: FontWeight.w600),
           onChanged: (value){
            email = value;
            ishtoo();
              debugPrint("value: $value");
              debugPrint("email: $email");
            },
           
           decoration: const InputDecoration(focusColor: Colors.white,
           prefixIcon: Padding(
             padding: EdgeInsets.symmetric(horizontal: 40),
             child: Icon(Icons.email_outlined, 
             color: Color(0xff056C5C),
             ),
           ),
           ),
           ),
           ),
           const SizedBox(height:25 ,
           ),
           const SizedBox(
            height: 30,
            width: 60,
           ),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(width: 2,color: Colors.white),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20,),
            ),
            onPressed: isActive ? (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondPage() ));
            } : null,
              child: 
            const Text("start"))
          ],
            ),
             
           ),
        );
     }
  }