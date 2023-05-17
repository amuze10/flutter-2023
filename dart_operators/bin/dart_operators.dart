import 'dart:math';


void main() {
 final number = Random().nextInt(10) +1;
print(number);
  
 
// +
 print(koshuu(15, 10));
 final dagyKosh = 40 + koshuu(10, 5);
 print(dagyKosh);
 final emiKemit = dagyKosh - 10;
 
 print("кемитилгенд: $emiKemit");
 print("__________");
 //-
 print(kemit(40, 20));

 //*
 print(koboyt(5, 5));

 // /
 print(boluu(1000, 5));

 // ~/
 print(takBol(200, 5));

 // % 
 print(payiz(1000, 3));

 print(a.length);
 print(a[3]);
 

}


int koshuu (int a, int b){
  final result = a + b;
  return result;
}

int kemit(int a, int b) {
  final summa = a - b;
  return summa; 
}


num koboyt(int a, int b) {
final summa = a * b;
return summa;
}

num boluu(int a, int b) {
final summa = a / b;
return summa;
}

num takBol(int a, int b) {
final summa = a  ~/ b;
return summa;
}

num payiz(int a, int b) {
final summa = a % b;
return summa;
}

List a = <String>["a","b","c","d"];

