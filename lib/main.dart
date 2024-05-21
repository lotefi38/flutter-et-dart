//import des packages
//bibliothèque material design
import 'package:flutter/material.dart';

//function main() : point d'entrer de l'application
  
void main() => runApp(const Store());  

//widget 
class Store extends StatelessWidget {
  const Store({super.key});
@override
Widget build(BuildContext context) {
  return const MaterialApp();
  title: "Store",
  home: scaffold(),
}    
}