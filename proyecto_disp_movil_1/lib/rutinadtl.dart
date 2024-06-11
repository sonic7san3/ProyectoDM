import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class InfoRutina extends StatelessWidget {
  const InfoRutina({super.key});

  // Función para crear un texto con padding
  Widget buildTextWithPadding(String text, {double bottomPadding = 20}) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Text(
        text,
        style: TextStyle(fontFamily: "SonicFont"),
      ),
    );
  }

  // Función para obtener un mensaje aleatorio basado en un número
  String getRandomMessage() {
    Random random = Random();
    int randomNumber = random.nextInt(5); // Genera un número entre 0 y 4

    switch (randomNumber) {
      case 0:
        return "Rutina 1: Mira 10 partidos";
      case 1:
        return "Rutina 2:  Juega 5 partidos amistosos online con un equipo nuevo";
      case 2:
        return "Rutina 3: Gana 3 torneos seguidos sin descender";
      case 3:
        return "Rutina 4: Marca 3 goles con no delanteros";
      case 4:
        return "Rutina 5: Ficha a un nuevo jugador y gana un partido";
      default:
        return "No se deberia leer esto";
    }
  }
  
  String getRandomMessage2() {
    Random random = Random();
    int randomNumber = random.nextInt(5); // Genera un número entre 0 y 4

    switch (randomNumber) {
      case 0:
        return "Rutina 6: Mira 5 partidos";
      case 1:
        return "Rutina 7: Juega 5 partidos contra bots";
      case 2:
        return "Rutina 8: Gana 1 torneo sin cometer faltas";
      case 3:
        return "Rutina 9: Marca 3 goles con delanteros";
      case 4:
        return "Rutina 10: Despide a un jugador y consigue a uno mejor";
      default:
        return "No se deberia leer esto";
    }
  }

  @override
  Widget build(BuildContext context) {
    String juegoUso = "assets/icons/superonce.svg";
    String randomMessage = getRandomMessage(); // Obtiene un mensaje aleatorio
    String RandomMessage2 = getRandomMessage2 (); // Obtiene un mensaje aleatorio
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 55, 220),
        title: Text("Inazuma Eleven Heroes Victory"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(juegoUso, height: 100, width: 100,),
             Padding(padding: EdgeInsets.only(bottom: 20)),
             Padding(padding: EdgeInsets.only(right: 20)),
             Text("Rutina de Hoy: ", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 30)),
             Padding(padding: EdgeInsets.only(right: 30)),
            Text(randomMessage, style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 30)),
             Padding(padding: EdgeInsets.only(right: 30)),
             Text(RandomMessage2, style: TextStyle(fontFamily: "SonicFont")),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Padding(padding: EdgeInsets.only(right: 20)),
            Text("Dias de racha: ", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 10)),
            Text("0", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 20))
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Volver"),
        ),
      ],
    );
  }
}