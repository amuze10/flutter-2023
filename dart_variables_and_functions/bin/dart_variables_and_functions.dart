import 'package:dart_variables_and_functions/dart_variables_and_functions.dart' as dart_variables_and_functions;

void main() {
  // стринг
  print("Bilim".runtimeType);
//инт
  print(10.runtimeType);
  //дабл
  print(15.5.runtimeType);
  //булинг
  print(true.runtimeType);
  double a = 10;
  print("даблдын тушунугу $a");
  printMessage("Aizada", 31);
  printMessage1("мери");
  int result = sum(10, 5);
  print(result);
  int result1 = result *10;
  print(result1);
 double result2 = result1 /10.2;
 print(result2);

}
// (){} функцияга бир ат беребиз
//  void - войд натыйжа бербейт,кайтарбайт,эмнени жазсаныз ошону чыгарат.параметри жок
void bilim(){
  print("hello");
}

// параметр алуучу, бар функция
void printMessage(String name, int age){
  print("Aty:$name");
  print("jashy: $age");
}

void printMessage1(String name, [int age = 20]){
  print("aty: $name jashy: $age");
}
 
 int sum(int a, int b) {
  print(sum(20, b));
return a + b;
}