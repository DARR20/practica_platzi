import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  //

  bool mini;
  var icon;
  double iconSize;
  var color;

  CircleButton(this.mini, this.icon, this.iconSize, this.color);

  @override
  _CircleButtonState createState() {
    //
    return _CircleButtonState();
  }
}

class _CircleButtonState extends State<CircleButton> {
  //

  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    //

    final botones = Expanded(
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        mini: widget.mini,
        onPressed: onPressedButton,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: Color(0xFF4268D3),
        ),
      ),
    );

    return botones;
  }
}
