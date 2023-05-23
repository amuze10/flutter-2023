import 'package:dio/dio.dart';
// async bul bir ubakyt aluuchu metod
// await кутуп туруучу
// dio bul data aluuchu paket
void main()async {
  final dio = Dio();
  final response = await dio.get("https://jsonplaceholder.typicode.com/posts");
  print(response);
}