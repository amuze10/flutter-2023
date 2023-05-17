import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setPreferredOrientations;
SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.portraitDown
]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData.dark(),
      
      home: const DemoScreen(),
    );
  }
}

 class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DemoScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
           const WhitePlay(),
          const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-re.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
           const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-mi.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),   
             
             const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-fa.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
             
              const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-sol.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
             const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-lya.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
           const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-si.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource("zvuk-notyi-do-vo-vtoroy-oktave.mp3"));
              },
            child: Container(
              height: 250,
              width: 60,
              color: Colors.white,
            ),
          ),
              ],
            ),
            
            
           

        ],),
      ),
    );
  }
}

class WhitePlay extends StatelessWidget {
  const WhitePlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
         AudioPlayer().play(AssetSource("donota.mp3"));
       },
     child: Container(
       height: 250,
       width: 60,
       color: Colors.white,
     ),
          );
  }
}