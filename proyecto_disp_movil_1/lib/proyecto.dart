
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Aplicacion para mejorar tu rutina", style: TextStyle(fontFamily: "SonicFont")),
          ],  
        )
      ),
      
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Menu())); 
            },
            child: const Text("Empieza Ya")),
      ]
    );
  }
}
