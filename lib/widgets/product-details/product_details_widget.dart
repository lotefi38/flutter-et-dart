import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/product_provider.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Récupérer le produit depuis le ProductProvider
    Product? product = context.watch<ProductProvider>().product;

    // Vérifier que le produit n'est pas nul
    if (product == null) {
      return const Center(
        child: Text('Aucun produit disponible'),
      );
    }

    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                product.image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product.description,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
