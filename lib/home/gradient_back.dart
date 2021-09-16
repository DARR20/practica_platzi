import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
//

  @override
  Widget build(BuildContext context) {
//
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 400.0,
      alignment: Alignment(-0.9, -0.6),
      decoration: BoxDecoration(
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
  }
}
