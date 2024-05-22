import 'dart:async';

import 'package:flutter/material.dart';

// class du widget
class AdsWidget extends StatefulWidget {
  AdsWidget({super.key});

  /*
    dart:
      List : équivalent à un array indicé 
      Map : équivalent à un objet  JS   (clé - valeure)

    visibilité des membres :
      pas de visibilité protected 
      quand il a une propriété préfixé de _ ceci veut dire qu'elle est protected (ex _maPropriéte)
  */

  // Liste des Map
  final List<Map> _items = [
    {'img': 'Ad1.jpg', 'text': 'Text1'},
    {'img': 'Ad2.jpg', 'text': 'Text2'},
    {'img': 'Ad3.jpg', 'text': 'Text3'},
  ];

  // idnice
  final int _index = 0;

  // minuteur
  // ? : valeur nulle
  Timer? _timer;

  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

// class de l'état du widget qui hérite de la class du Widget    , methode build responsable pour l'affichage
class _AdsWidgetState extends State<AdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/img/ad1.jpeg'),
      ],
    );
  }
}
