import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/components/resul_page.dart';
import 'package:sabak16_bmi_and_snippets/components/status_card.dart';

import 'package:sabak16_bmi_and_snippets/theme/app_colors.dart';
import 'package:sabak16_bmi_and_snippets/theme/app_texts.dart';

import 'components/calculate_button.dart';
import 'components/height_class.dart';
import 'components/male_female.dart';
import 'components/weight_age.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 60;
  int age = 23;
  double height = 180;

void resulttattar (){
   final res = weight / pow(height / 100, 2);
          if (res <= 18.5) {
            _showAlertDialog(context, "Сиз арыксыз");
            
          } else if (res >= 18.6 && res <= 25) {
             _showAlertDialog(context, "Сиз нормалдуусуз");
           // print("Сиз нормаалдуусуз:$res");
          } else if (res >= 25.1 && res <= 30) {
            _showAlertDialog(context, "Сиз ашыкча салмактуусуз");
           // print("Сиз ашыкча салмактуусуз:$res");
          } else {
             _showAlertDialog(context, "Диетага отурунуз");
            //print("Диетага отурунуз:$res");
          }
          
        }




   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
          backgroundColor: AppColors.bgrColor,
          title: const Center(child: Text(AppTexts.bmi))),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 39,
                  ),
                  StatusCard(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        isTrue = false;
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.female,
                      text: AppTexts.female,
                      isTrue: !isTrue,
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(height: 18),
            StatusCard(
              child: HeightClass(
                text: AppTexts.height,
                text2: "${height.toInt()}",
                text3: AppTexts.cm,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                height: height,
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: "$weight",
                      removeBasuu: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 39,
                  ),
                  StatusCard(
                      child: WeightAge(
                    text: AppTexts.age,
                    san: "$age",
                    removeBasuu: () {
                      setState(() {
                        age--;
                      });
                    },
                    addBasuu: () {
                      setState(() {
                        age++;
                      });
                    },
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: CalculateButton(
        onPressed: () {
         // resulttattar();
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
            metri: height, salmak: weight
            
          ,),
          ),
          );
        }
       )
    );
  }

}

Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.cardColor,
          title: const Text(AppTexts.bmi,
          textAlign: TextAlign.center,),
          content:  Text(text,
          textAlign: TextAlign.center,
          ),
          
          actions: <Widget>[
           
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("чыгуу"))
          ],
        );
      });
}