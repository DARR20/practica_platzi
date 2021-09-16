import 'package:flutter/material.dart';
import 'package:platzi_holamundo/profile/informacion_tarjeta.dart';

class CardPerfil extends StatelessWidget {
//

  String pathImage = 'assets/img/ejemplo1.jpg';
  String placeName = '';
  String descriptionPlace = '';
  String stepsInt = '';

  CardPerfil(
      this.pathImage, this.placeName, this.descriptionPlace, this.stepsInt);

  @override
  Widget build(BuildContext context) {
//

    final cardProfile = Container(
      height: 180.0,
      width: 400.0,
      margin: EdgeInsets.only(
        top: 20,
        right: 10,
        left: 10,
        bottom: 50.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)),
        ],
      ),
    );
    return Stack(
      alignment: Alignment(0.9, 0.9),
      children: [
        cardProfile,
        InformacionTarjeta(placeName, descriptionPlace, stepsInt),
      ],
    );
  }
}
