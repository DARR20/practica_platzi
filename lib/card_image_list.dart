import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:platzi_holamundo/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/ejemplo1.jpg'),
          CardImage('assets/img/ejemplo2.jpg'),
          CardImage('assets/img/ejemplo3.jpg'),
          CardImage('assets/img/ejemplo4.jpg'),
        ],
      ),
    );
  }
}
