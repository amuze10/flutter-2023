import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app_colors.dart';
import 'package:sabak14_quize_app/constants/app_text_stylies.dart';
import 'package:sabak14_quize_app/constants/texts.dart';
import 'package:sabak14_quize_app/use_file.dart';
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

UseQuize useQuize = UseQuize();
List<Icon> iconAluu = [];

void teksher(bool koldonuu){
setState(() {
  if(useQuize.isFinished() == true) {
showDialog<void>
(context: context,
barrierDismissible: false,
 builder: ( (BuildContext context) {
   return AlertDialog(
    title: const Text("Тест QuizeApp"),
    content: SingleChildScrollView(
      child: ListBody(
        children: const <Widget> [Text("Тестиниз аягына чыкты")],
      ),
    ),
    actions: <Widget>[
      TextButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: const Text("ооба")),
      const AlertDialog(backgroundColor: Colors.red,)
    ]
   );
 }
 )
);
useQuize.indexZero();
  }else{
    if (useQuize.joopAluu() == koldonuu){
      iconAluu.add(const Icon(Icons.check,color: Colors.green,));

    }else{
      iconAluu.add(const Icon(Icons.close, color: Colors.red,));
    }
  }
  useQuize.nextQuestion();
}
);
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Center(child: Text("Тапшырма 7", 
        style: AppTextStylies.appBarTextStyle
        ),
      ),
      elevation: 0,
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           Text(
           useQuize.surooAluu(),
          style: AppTextStylies.appTextStyle,
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 102,),
          SizedBox(
            height:70 ,
            width: 335,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:AppColors.trueBgrColor),
              onPressed: (){
                teksher(true);
                
              }, 
              child: const Text(
                AppTexts.tuura,
            style: AppTextStylies.trueStyle,),
            ),
          ),
          const SizedBox(height: 20,),
            
          SizedBox(
            height:70 ,
            width: 335,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:AppColors.falseBgrColor),
              onPressed: (){
                teksher(false);
              }, 
              child: const Text(
                AppTexts.tuuraEmes,
            style: AppTextStylies.trueStyle,),
            ),
          ),
          const SizedBox(height: 30,),
          SizedBox(height: 40,
            child: ListView.builder(itemCount: iconAluu.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) {
              return iconAluu[index];
            }),
          )
            
          
          
          ]
      ),
    ),
    ),
    );
  }
}