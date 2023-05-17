

void main(List<String> arguments) {

  void main(List<String> arguments) {
  print("bilim".runtimeType);
  print(10.runtimeType);
  print(10.5.runtimeType);
  print(true.runtimeType);
  double a = 10;
  print('doubldyn tyshynygy $a');
  bilim();
  printMessag('Tom', 10);
  printMessag('Jon', 30);
  int result = sum(10, 20);
  print(result);
  int result1 = result * 10;
  print(result1);
  double result2 = result1 / 10.5;
  print(result2);
}


void bilim() {
  print("Hello World");
}


void printMessag(String name, int age) {
  print('Aty:$name');
  print('Jashy:$age');
}

void printMessage1(String name, {int age = 20}) {
  print('Aty:$name Jagy $age');
}

//return-kaitaruuchu
int sum(int a, int b) {
  return a + b;
}
}