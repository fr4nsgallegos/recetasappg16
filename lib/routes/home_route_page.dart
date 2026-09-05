import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoutePage extends StatelessWidget {
  const HomeRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeRoute Page")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Bienvenido a la clase de Gorouter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: .bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.go("/login");
              },
              child: Text("Ir al login"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/profile");
              },
              child: Text("Ir al perfil"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/products");
              },
              child: Text("Ver productos"),
            ),
          ],
        ),
      ),
    );
  }
}
