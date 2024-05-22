import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';

class ProductsService {



Future getProducts() async {
  // requete en get
  Uri uri = Uri.parse('${Config.URI_URL}/products');
  http.Response response = await http.get(uri);

  //recuperer la réponse 
  if (response.statusCode == 200 ){
  //convertir les données en json
  List data = jsonDecode(response.body);
  inspect(data);
  } else {
   throw Error();

  }
}
}

