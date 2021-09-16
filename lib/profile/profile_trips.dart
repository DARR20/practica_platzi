import 'package:flutter/material.dart';
import 'package:platzi_holamundo/profile/cabecera_perfil.dart';
import 'package:platzi_holamundo/profile/card_perfil_lista.dart';

import 'gradient_title.dart';

class ProfileTrips extends StatelessWidget {
  //

  String foto =
      'https://cdn2.excelsior.com.mx/media/styles/image800x600/public/pictures/2021/06/09/2592367.jpg';

  Color colorName = Colors.white, colorInfo = Colors.white38;

  @override
  Widget build(BuildContext context) {
    //
    return Stack(
      //
      children: [
        CabeceraPerfil(),
        CardPerfilLista(),
        GradientTitle('Perfil', foto, colorName, colorInfo),
      ],
    );
  }
}
