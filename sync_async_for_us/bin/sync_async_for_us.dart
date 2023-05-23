
void main() {
  resultTasks();
}

void resultTasks() async{
  
  task1();
  String stringTask2 = await task2();
  task3(stringTask2);
}


void task1() {
  print('task 1 chykty ');
}

//sync
Future <String> task2() async{
  Duration threeSeconds = Duration(seconds: 3);
  String? result;
 await Future.delayed(threeSeconds, (){
    result = 'Task 2 Data';
    print('task 2 chykty');
  });
  
  
  return result.toString();
}

//async
void task3(String task2String) {
 
    print('task 3 chykty: $task2String');

}
