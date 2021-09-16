import 'package:flutter/material.dart';

class Button_Bar extends StatefulWidget {
  //

  @override
  _Button_BarState createState() => _Button_BarState();
}

class _Button_BarState extends State<Button_Bar> {
  //
  bool _pressed = false;

  void onPressedButtons() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    //

    final botones = Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FloatingActionButton(
            backgroundColor: Color(0xFF11DA53),
            mini: true,
            onPressed: onPressedButtons,
            child: Icon(this._pressed ? Icons.bookmark : Icons.bookmark_border),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF11DA53),
            mini: true,
            onPressed: onPressedButtons,
            child: Icon(this._pressed
                ? Icons.business_center
                : Icons.business_center_outlined),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF11DA53),
            mini: true,
            onPressed: onPressedButtons,
            child: Icon(
                this._pressed ? Icons.add_circle : Icons.add_circle_outline),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF11DA53),
            mini: true,
            onPressed: onPressedButtons,
            child: Icon(this._pressed ? Icons.mail : Icons.mail_outline),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF11DA53),
            mini: true,
            onPressed: onPressedButtons,
            child: Icon(this._pressed ? Icons.person : Icons.person_outline),
          ),
        ],
      ),
    );

    return botones;
  }
}
