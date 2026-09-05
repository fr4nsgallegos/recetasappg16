import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  String productId;
  ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Product Detail Page")));
  }
}
