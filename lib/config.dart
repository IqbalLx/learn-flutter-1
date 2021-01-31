import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Colors.teal[800];
Color black = Colors.black54;
Color white = Colors.white;
Color grey = Colors.grey[350];

double smallFontSize = 13;
double mediumFontSize = 17;

List<Map> animalCategories = [
  {'name': 'Cats', 'imagePath': 'images/cat.png'},
  {'name': 'Dogs', 'imagePath': 'images/dog.png'},
  {'name': 'Horses', 'imagePath': 'images/horse.png'},
  {'name': 'Parrots', 'imagePath': 'images/parrot.png'},
  {'name': 'Rabbits', 'imagePath': 'images/rabbit.png'},
];

List<BoxShadow> listBoxShadow = [
  BoxShadow(
    color: Colors.grey[350],
    offset: Offset(0, 8),
    blurRadius: 15,
  ),
];

List drawerItems = [
  {'icon': Icons.pets, 'text': 'Adoption'},
  {'icon': FontAwesomeIcons.solidEnvelopeOpen, 'text': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'text': 'Add pet'},
  {'icon': Icons.favorite, 'text': 'Favorites'},
  {'icon': Icons.mail, 'text': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'text': 'Profile'}
];