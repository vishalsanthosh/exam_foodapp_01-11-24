import 'package:flutter/material.dart';
import 'package:mini_project4/description.dart';
import 'package:mini_project4/list.dart';
import 'package:mini_project4/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
      ),
      home:MainScreenList(),
    );
  }
}

