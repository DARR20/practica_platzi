import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String fotoPerfil =
      'https://cdn2.excelsior.com.mx/media/styles/image800x600/public/pictures/2021/06/09/2592367.jpg';

  String nombrePerfil = 'Varuna Yasas';

  String detalles = '1 review 5 fotos';

  String comentario = 'there is  an amazing place in Sri Lanka';

  Review(this.nombrePerfil, this.fotoPerfil, this.comentario, this.detalles);

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
        style: TextStyle(fontSize: 13.0, color: Color(0xFFa3a5a7a)),
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
      ),
    );

    return Row(
      children: [foto, datosUsuario],
    );
  }
}
