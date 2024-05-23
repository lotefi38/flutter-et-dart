
import 'package:go_router/go_router.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/product_detail_screen.dart';


class RouterService {
  //lister les routes
  static GoRouter getRouter() {
    return GoRouter(
      routes: [
        GoRoute(
/*
path :shema web d'une route

*/



          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),

          GoRoute(
/*
path :shema web d'une route

*/



          path: '/product-details',
          name: 'product-details',
          builder: (context, state) => const ProductDetailScreen(),
        ),
      ],
    );
  }
}

