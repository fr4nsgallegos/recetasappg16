import 'package:flutter/material.dart';
import 'package:recetasappg16/widget/form_item_widget.dart';
import 'package:recetasappg16/widget/receta_card_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _preparationController = TextEditingController();
  TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFF152B3E),
      appBar: AppBar(
        backgroundColor: Color(0XFF152B3E),
        title: Text("App de Recetas", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: .start,
            children: [
              FormItemWidget(
                controller: _titleController,
                iconData: Icons.title,
                label: "Ingresa el título",
              ),
              FormItemWidget(
                controller: _preparationController,
                iconData: Icons.list,
                label: "Ingresa pa preparación",
                maxLines: 3,
              ),
              FormItemWidget(
                controller: _imageController,
                iconData: Icons.image,
                label: "Ingresa la url de imagen",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Registrar receta"),
                ),
              ),
              RecetaCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
