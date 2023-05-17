//импорт бул флаттерге тиешелуу нерселерди озуно камтыйт
import 'package:flutter/material.dart';
//()функциянын функция экенин билдирет
//{}функциянын денеси
//экинчи бет виджеттин аты
//extends мурас алуу
class EkinchiBet extends StatelessWidget {
  //класстын конструктору
  const EkinchiBet({super.key, 
  required this.count});

 final int count;
 
  @override
  // билд метод озуно бир виджет алат (куруу)
  //билд контекст бул адрес виджеттерди козомолдоочу вектор
  Widget build(BuildContext context) {
    //ретурн-кайтаруу. 
    return   
    // ак барак
    Scaffold(
// аппбар бул панель приложений
      appBar: AppBar(
        
        title: const Center(child: Text("Тапшырма 2")),
      ),
      //боди денеси. 
      body: Center(
        // боди чайлд алат. Фл озуно колумн алат.
        // column бул колонка
        child: Column(
         // mainAxisAlignment бул колонканы экрандын ортосуна алып келуу
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //кард бул карта. 
          Card(
            color: Colors.grey,
            // шейп бул форма. 
            //roundedRectangleBorder бул форманын четтерин кесуу
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(10),
              
              ),
              // размер коробки
      child: SizedBox
  
      (width: 300, height: 50,
      child: Center(child: Text("$count", 
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
               ),
             ),
            ),
          ],
            )
      ),
    ); 
  }
}