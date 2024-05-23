import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';
import 'package:store/models/product.dart';

class ProductsService {



Future getProducts() async {
  // requete en get
  Uri uri = Uri.parse('${Config.URI_URL}/products');
  http.Response response = await http.get(uri);

  //recuperer la réponse 
  if (response.statusCode == 200 ){
  //convertir les données en json
  List data = jsonDecode(response.body);
  return data
  .map(
  ( dynamic value) => Product(
    id:value['id'],
    title: value['title'],
    description: value['description'],
    categorie: value['categories'],
    image: value['image'],
    price: value['price'],
    rating: value['rating']),
  )
  .toList();

  } else {
   throw Error();

  }
}
}

