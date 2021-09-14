import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:platzi_holamundo/review.dart';

class RevieList extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
            'Jose Luis',
            'https://c8.alamy.com/compes/r9w6db/hombre-calvo-peinar-su-cabello-r9w6db.jpg',
            'papitas',
            '1 review 3 fotos'),
        Review(
            'Jose Luis',
            'https://destinonegocio.com/wp-content/uploads/2015/06/stock.jpg',
            'Mal olor en las cortinas',
            '5 review 1 fotos'),
        Review(
            'Jose Luis',
            'https://st3.depositphotos.com/14803258/18679/i/600/depositphotos_186791358-stock-photo-winking-woman.jpg',
            'Tengo hambre',
            '2 review 3 fotos'),
        Review(
            'Jose Luis',
            'https://editorial01.shutterstock.com/wm-preview-1500/10346485al/b977369c/kenny-ortega-receives-a-star-on-the-hollywood-walk-of-fame-usa-shutterstock-editorial-10346485al.jpg',
            'Enserio, tengo hambre :(',
            '2 review 2 fotos'),
      ],
    );
  }
}
