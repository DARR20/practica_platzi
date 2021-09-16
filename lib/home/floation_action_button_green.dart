import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  //

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  //
  bool _pressed = false;
  String favoritos = '';
  String agregado = 'Agregado a Favoritos';
  String removido = 'Removido de Favoritos';

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });

    this._pressed ? favoritos = agregado : favoritos = removido;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(favoritos),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
