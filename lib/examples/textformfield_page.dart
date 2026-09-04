import 'package:flutter/material.dart';

class TextformfieldPage extends StatelessWidget {
  TextformfieldPage({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFormField Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: .bold,
                  ),
                  cursorColor: Colors.red, //Colors del cursor
                  cursorWidth: 10, //ancho del cursos
                  cursorHeight: 20, //ancho del cursor
                  cursorRadius: Radius.circular(
                    50,
                  ), //APLICAMOS REDONDEO AL CURSOR
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    labelText: "Correo",
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "xxxxxx@gmail,com",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    helperText: "Ingresa tu Correo electrónico ",
                    prefix: Icon(Icons.person),
                    suffixIcon: Icon(Icons.check_circle),
                    // enabled: false,
                    border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.green, width: 4),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.green, width: 4),
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor ingresa tu correo";
                    } else if (value.length < 6) {
                      return "El correo debe tener al menos 6 caracteres";
                    } else if (!RegExp(
                      "[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}",
                    ).hasMatch(value)) {
                      return "Ingresa un correo válido";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 32),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Ingresa tu contraseña",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor ingresa tu contraseña";
                    } else if (value.length < 8) {
                      return "La contaseña debe tener al menos 8 caraceteres";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // validando el formulario
                    if (_formKey.currentState!.validate()) {
                      print(_formKey.currentState!.validate());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Form correcto y enviado"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Revisa las alertas"),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    }
                  },
                  child: Text("Enviar formulario"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
