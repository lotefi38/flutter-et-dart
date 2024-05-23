class Product {
//constructeur
/*
{} : constructeur nommé
this : parametre promu
required : parametre obligatoire
*/

int id;
String title, description, category, image;
num price;
Map rating;
// constructeur
  Product({ 
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
   });  
}