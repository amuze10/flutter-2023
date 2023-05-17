


class Student{

Student (
  {required this.id,
  required this.image,
    required this.name,
   required this.surName,
   required this.age, 
   this.phone,required
    this.email,
   this.address,
   required this.group, 
   this.gender, this.marriage});

final int id;
final String image;
final String name;
final String surName;
int age;
String? phone;
final String email;
final String? address;
int group;
final String? gender;
String? marriage;
}

final aybek = Student(
  id: 1,
  image: "https://c1.wallpaperflare.com/preview/568/71/709/face-facial-hair-fine-looking-guy.jpg",

  name: "Aybek", 
  surName: "Bariev", 
  age: 25, 
  email: "aybek@gmail",
  address: "Bishkek", 
  group: 1,
  gender: "mAale", 
  marriage: "single");

  final aynura = Student(
    id: 2,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFRm9D83OQiTkbVCb6rSrZvNx36SLJinC2wFhyBYs&s",
  name: "Aynura", 
  surName: "Aminova", 
  age: 19, 
  email: "aynura@gmail",
  address: "Bishkek",  
  group: 2,
  phone: "+996772490517");

  final akyl = Student(
    id: 3,
    image:"https://images.newscientist.com/wp-content/uploads/2019/09/05110709/ed-bridges-landscape.jpg",
    name: "Akyl", 
  surName: "Maratov", 
  age: 29, 
  email: "akyl@gmail", 
  group: 3);

  final altyn = Student(
    id: 4,
    image:"https://media.istockphoto.com/id/512285700/photo/almost-blank-expression-face-close-up-young-man.jpg?s=612x612&w=0&k=20&c=1-tM7x273Wr9UVtvQabfnNZKZ2_KzboPC3QHH0WCJmA=" ,
  name: "Altyn", 
  surName: "Maripov", 
  age: 23, 
  email: "altyn@gmail", 
  group: 4);

  final aryn = Student(
    id: 5,
    image: "https://t3.ftcdn.net/jpg/01/97/11/64/360_F_197116416_hpfTtXSoJMvMqU99n6hGP4xX0ejYa4M7.jpg",
  name: "Aryn", 
  surName: "Kamilov", 
  age: 21, 
  email: "aryn@gmail", 
  group: 5);

List studentter = <Student>[
  aybek,aynura,akyl, altyn, aryn
];

  