import 'package:dart_collections/dart_collections.dart' as dart_collections;

void main(List<String> arguments) {
 // List[]; Листке окшош эки сан же соз берилсе да чыга берет.
 List printList = ["Bilim", 20, 20, 10.5, 1000, true, false] ;
 print(printList);

 // Set {}; 2 ЖОЛУ КАЙТАЛАП ЧЫГАРБАЙТ
 Set printSet = {true, false, 100,40.5, "BILIM20"};
 print(printSet);

 // Map{}; биринчи бир ключ алат."салам" : - бул ключ. Андан кийин маани берилет жана ,коюлат. маани "go study",
 Map printMap = { "салам": "go study", 20: "hello teachers"};
 print(printMap);

 //generic <>

 List birList = <String> ["salam", "stay", "fast"];
 print(birList);

 List birList1 = <int>[10, 20, 30];
 print(birList1);

 Map birMap = <dynamic, String> {10: "10", "kluch": "негиз"};
 print(birMap);

}
