import 'package:flutter/material.dart';
import 'simple_app.dart';
import 'counter_app.dart';
import 'student_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Launcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  final List<_AppItem> apps = [
    _AppItem(name: 'Simple App', widget: SimpleApp(), icon: Icons.home),
    _AppItem(name: 'Counter App', widget: CounterApp(), icon: Icons.add),
    _AppItem(name: 'Student Example', widget: StudentExampleScreen(), icon: Icons.school),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App Launcher'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: apps.length,
          itemBuilder: (context, index) {
            final app = apps[index];
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Icon(app.icon, size: 40, color: Colors.indigo),
                title: Text(
                  app.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => app.widget),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AppItem {
  final String name;
  final Widget widget;
  final IconData icon;

  _AppItem({required this.name, required this.widget, required this.icon});
}
