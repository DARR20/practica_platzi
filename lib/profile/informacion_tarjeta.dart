import 'package:flutter/material.dart';

import 'package:platzi_holamundo/home/floation_action_button_green.dart';

class InformacionTarjeta extends StatelessWidget {
  //

  String placeName = '';
  String descriptionPlace = '';

  String stepsInt = '';

  InformacionTarjeta(this.placeName, this.descriptionPlace, this.stepsInt);

  @override
  Widget build(BuildContext context) {
    //

    final tittle_place = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        placeName,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.justify,
      ),
    );

    final stepsPlace = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 5.0,
            bottom: 10.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Text(
            'Steps',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              color: Colors.yellow.shade600,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: 20.0,
            left: 20.0,
          ),
          child: Text(
            stepsInt,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              color: Colors.yellow.shade600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    final content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        tittle_place,
        description,
        stepsPlace,
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        right: 45.0,
        left: 45.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)),
        ],
        color: Colors.white,
      ),
      child: Stack(
        alignment: Alignment(1.0, 1.7),
        children: [
          content,
          FloatingActionButtonGreen(),
        ],
      ),
    );
  }
}
