 import 'package:sabak14_quize_app/model.dart';

class UseQuize {
  int index = 0;

  List<QuizeModel> surooJoop = [
    QuizeModel(suroo:"Кыргызстанда 7 область барбы?" , joop: true),
    QuizeModel(suroo: "Кыргызстан Африка континентинде жайгашканбы?", joop: false),
    QuizeModel(suroo: "Бишкек Кыргызстандын борбор шаарыбы?", joop: true),
    QuizeModel(suroo: "Ыссык кол Баткен областында жайгашканбы?", joop: false),
    QuizeModel(suroo: "Кыргызстан тоолуу олкобу?", joop: true),
    QuizeModel(suroo: "Кыргызстанда 10млн калк бар, туурабы?", joop: false),
  ];

String surooAluu(){ 
  return surooJoop[index].suroo;
}

bool joopAluu(){
  return surooJoop[index].joop;
}


void nextQuestion(){
  if( index <= surooJoop.length){
    index++;
  }
}
bool isFinished(){
  if (surooJoop[index]==surooJoop.last){
    return true;
  }else{
    return false;
  }
}

void indexZero(){
  index =0;
}
 }