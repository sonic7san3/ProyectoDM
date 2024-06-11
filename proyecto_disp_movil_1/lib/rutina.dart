import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'rutinadtl.dart';

class DetallesRutina extends StatelessWidget {
  const DetallesRutina({super.key});

  @override
  Widget build(BuildContext context) {
    String juegoUso = "assets/icons/superonce.svg";
    String InfodRutina = "assets/icons/training-gym-svgrepo-com.svg";
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 157, 55, 220),

        title: Text("Inazuma Eleven Heroes Victory"),
      ),

      body: Center(
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SvgPicture.asset(juegoUso, height: 100, width: 100,),
             Padding(padding: EdgeInsets.only(bottom: 20)),
            Text("Detalles del juego: RPG de deportes", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 20)),
            Text("Solo para Nintendo Switch", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const InfoRutina())); 
            },
            child: SvgPicture.asset(InfodRutina, height: 100, width: 100,)),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Text("Horas de juego: ", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 10)),
            Text("12 horas", style: TextStyle(fontFamily: "SonicFont")),
             Padding(padding: EdgeInsets.only(bottom: 60))
          ],  
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Volver")),
      ]
    );
  }
}