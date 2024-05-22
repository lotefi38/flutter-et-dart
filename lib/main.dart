//import de packages
//bibliothèque material design
import 'package:flutter/material.dart';
import 'package:store/screens/home_screen.dart';
 
void main() => runApp(const Store());
 
class Store extends StatelessWidget {
  const Store({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Store',
      home: HomeScreen(),
    );
  }
}