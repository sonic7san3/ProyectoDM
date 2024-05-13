import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'jugador.dart';
import 'juegos.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  void prueba()
  {

  }

  @override
  Widget build(BuildContext context) {
    String iconopreUser = "assets/icons/idusuario.svg";
    String iconoConsola = "assets/icons/consolaswitch.svg";
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 225, 230),
        title: Text("Nombre de usuario"),
      ),

      body: Center(
        child: Container(
          width: 175,
          height: 350,
          child: Card( 
            color: Color.fromARGB(255, 53, 201, 227),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(' Perfil ',  style: TextStyle(fontFamily: 'SonicFont')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(                 
                  builder: (context) => const perfilJugador()));
              },
            child: SvgPicture.asset(iconopreUser, height: 50, width: 50,)), 
        
        const Padding(padding: EdgeInsets.only(bottom: 25)),
           
            Text(' Lista de Juegos ',  style: TextStyle(fontFamily: 'SonicFont')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(                 
                  builder: (context) => const listaJuegos())); //ir a lista de juegos
              },
              child: SvgPicture.asset(iconoConsola, height: 50, width: 50,)),
         
             const Padding(padding: EdgeInsets.only(bottom: 45)),
            ]
          )        
                ),
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