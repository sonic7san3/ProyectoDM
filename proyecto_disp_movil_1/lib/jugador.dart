import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rutina.dart';

class perfilJugador extends StatelessWidget {
  const perfilJugador({super.key});

  @override
  Widget build(BuildContext context) {

    String iconoUser = "assets/icons/usuario.svg";
    String empresaFav = "assets/icons/nintendo.svg";
    String juegoUso = "assets/icons/superonce.svg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 12, 8),
        title: Text("Perfil"),
      ),
      
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              SvgPicture.asset(iconoUser, height: 75, width: 75,),
              Text("Nombre de usuario:", style: TextStyle(fontFamily: "SonicFont")),
               Text("SonicSans", style: TextStyle(fontFamily: "SonicFont")),
               const Padding(padding: EdgeInsets.only(bottom: 10)),
              ],
            ),
            Row( 
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              
              Text('Empresa favorita:',  style: TextStyle(fontFamily: 'SonicFont')),
              SvgPicture.asset(empresaFav, height: 100, width: 100,),
            const Padding(padding: EdgeInsets.only(bottom: 100)),

          ],
          ),
          
          Text('Juego en practica actual: ',  style: TextStyle(fontFamily: 'SonicFont')),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina())); 
            },
            child: SvgPicture.asset(juegoUso, height: 100, width: 100,)),

          ]
        )
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