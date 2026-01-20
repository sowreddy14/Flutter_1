import 'package:flutter/material.dart';

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  String introduce() {
    return 'Hi, I am $name and I am $age years old';
  }
}

// Widget to display student info in Flutter
class StudentExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var s1 = Student('Aanya', 20);

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.indigo.shade100,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            s1.introduce(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo.shade900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
