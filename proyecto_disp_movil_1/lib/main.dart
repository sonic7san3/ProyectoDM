import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'proyecto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training Gaming App',
      theme: ThemeData(
        fontFamily: 'SoniFont',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 78, 73, 226)),
        useMaterial3: true,
      ),
      home: const 
      MyHomePage(title: 'Training Gaming App'),
    );
  }
}
