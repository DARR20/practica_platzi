import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  //

  Color colorInfo, colorName;

  String fotoPerfil = '';

  String nombrePerfil = '';

  String detalles = '';

  String comentario = '';

  Review(this.nombrePerfil, this.fotoPerfil, this.comentario, this.detalles,
      this.colorName, this.colorInfo);

  @override
  Widget build(BuildContext context) {
    //
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          color: colorInfo,
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        nombrePerfil,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          color: colorName,
        ),
      ),
    );

    final datosUsuario = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final foto = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(top: 10, left: 10),
      child: CircleAvatar(
        //

        backgroundImage: NetworkImage(fotoPerfil),
        backgroundColor: Colors.transparent,
      ),
    );

    return Row(
      children: [foto, datosUsuario],
    );
  }
}
