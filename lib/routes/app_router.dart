import 'package:go_router/go_router.dart';
import 'package:recetasappg16/pages/home_page.dart';
import 'package:recetasappg16/routes/home_route_page.dart';
import 'package:recetasappg16/routes/login_page.dart';
import 'package:recetasappg16/routes/product_detail_page.dart';
import 'package:recetasappg16/routes/products_page.dart';
import 'package:recetasappg16/routes/profile_page.dart';

// Gorouter es una libreria que va permitie manejar la navegación de flutter usando rutas declaraticas
// o sea en vez de decir esta pantalla encima de la otra ->  llévame a esta dirección
//  /perfil

// Vamos a declarar nuestras rtuitas

bool isLoggedIn = true;
final GoRouter appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeRoutePage()),
    GoRoute(path: "/login", builder: (context, state) => LoginPage()),
    GoRoute(path: "/profile", builder: (context, state) => ProfilePage()),
    GoRoute(path: "/products", builder: (context, state) => ProductsPage()),
    GoRoute(
      path: "/products/:id",
      builder: (context, state) {
        final productId = state.pathParameters["id"]!;
        return ProductDetailPage(productId: productId);
      },
    ),
  ],
);
