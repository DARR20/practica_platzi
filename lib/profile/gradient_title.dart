import 'package:flutter/material.dart';
import 'package:platzi_holamundo/home/review.dart';
import 'package:platzi_holamundo/profile/button_bar.dart';

class GradientTitle extends StatelessWidget {
  //
  String title = '';
  String fotoPerfil = '';
  Color colorName = Colors.white, colorInfo = Colors.white38;

  GradientTitle(this.title, this.fotoPerfil, this.colorName, this.colorInfo);

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
//

    double screenHeight = MediaQuery.of(context).size.height;

    final titleProfile = Container(
      margin: EdgeInsets.only(
        top: 40.0,
        bottom: 5.0,
        left: 20.0,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final headBar = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleProfile,
          Review('Jose Luis', fotoPerfil, '', 'Jose.Luis38@gmail.com',
              colorName, colorInfo),
          //Button_Bar(),
        ],
      ),
    );

    final gradiente = Container(
      height: 300.0,
      alignment: Alignment(-0.9, -0.6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2),
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        headBar,
      ],
    );
  }
}
