import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_disp_movil_1/menu.dart';
import 'proyecto.dart';
import 'menu.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text("Beast Gamer Training App", style: TextStyle(fontFamily: "SonicFont")),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Ingrese su nombre de usuario',
              ),
              readOnly: true, // Desactiva la entrada de texto
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Ingrese su Contraseña',
              ),
              obscureText: true,
              readOnly: true, // Desactiva la entrada de texto
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              child: const Text('Ingresar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
