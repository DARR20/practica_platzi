import 'package:flutter/material.dart';
import 'package:platzi_holamundo/profile/card_perfil.dart';

class CardPerfilLista extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    //

    return Container(
      child: ListView(
        padding: EdgeInsets.only(
          top: 300.0,
          right: 25.0,
          left: 25.0,
          bottom: 90.0,
        ),
        scrollDirection: Axis.vertical,
        children: [
          CardPerfil('assets/img/ejemplo1.jpg', 'Armenia',
              'Es un sitio muy agradable con buenos paisajes', '120.205.110'),
          CardPerfil('assets/img/ejemplo2.jpg', 'Toronto',
              'Es un sitio muy frio con grandes lagos', '520.605.210'),
          CardPerfil('assets/img/ejemplo3.jpg', 'Ibague',
              'Es un sitio muy agradable con buenos paisajes', '320.305.310'),
          CardPerfil(
              'assets/img/ejemplo4.jpg',
              'Marte',
              'Es un sitio muy agradable con buenos paisajes',
              '6620.6705.7610'),
        ],
      ),
    );
  }
}
