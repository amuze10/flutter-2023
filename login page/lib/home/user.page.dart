

import 'package:flutter/material.dart';
import 'package:for_loop2/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("User page"),
      ),
      body: Center(
        child: Column(children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(student.image)),
          Text(student.id.toString()),
          Text(student.name),
          Text(student.surName),
          Text(student.email),
          Text(student.age.toString()),
          Text(student.group.toString()),
          Text(student.address.toString()),
          Text(student.gender.toString()),
          Text(student.phone ?? "пустой" ),
          Text(student.marriage ?? "пустой"),
          
        ],
        ),
      ),
    );
  }
}