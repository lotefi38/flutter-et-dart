import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/product-details/product_details_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      Scaffold permet d'architecturer l'application
      body : définir le contenu principal de l'écran
      AppBar : barre de navigation
      Drawer : menu coulissant
      FloatingButton : bouton flottant…
    */
    return const Scaffold(
      appBar: AppbarWidget(),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsWidget(), // Correction ici pour inclure le widget dans une liste
          ],
        ),
      ),
    );
  }
}
