import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final res = weight / pow(height / 100, 2);
    return res;
  }

  String bmiResult(res) {
    if (res <= 18.5) {
      return 'Сиз арыксыз';
    } else if (res >= 18.6 && res <= 25) {
      return 'Сиз нормалдуусуз';
      // print("Сиз нормаалдуусуз:$res");
    } else if (res >= 25.1 && res <= 30) {
      return 'Сиз ашыкча салмактуусуз';
      // print("Сиз ашыкча салмактуусуз:$res");
    } else {
      return "Диетага отурун!";
      //print("Диетага отурунуз:$res");
    }
  }

  String bmiDescription(res) {
    if (res <= 18.5) {
      return 'Сиз арыксыз, жакшылап тамактанын!';
    } else if (res >= 18.6 && res <= 25) {
      return 'Сиз нормалдуусуз, Азаматсыз!';
      // print("Сиз нормаалдуусуз:$res");
    } else if (res >= 25.1 && res <= 30) {
      return 'Сиз ашыкча салмактуусуз, спорт менен алектенин!';
      // print("Сиз ашыкча салмактуусуз:$res");
    } else {
      return "Диетага отурун!";
      //print("Диетага отурунуз:$res");
    }
  }
}
