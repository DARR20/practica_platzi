import 'package:flutter/material.dart';
import 'package:platzi_holamundo/profile/gradient_title.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
//

  Color colorName = Colors.transparent, colorInfo = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientTitle('Bienvenido', '', colorName, colorInfo),
        CardImageList(),
      ],
    );
  }
}
