import 'package:flutter/material.dart';
import 'package:recetasappg16/examples/listview_page.dart';
import 'package:recetasappg16/examples/navigator_page.dart';
import 'package:recetasappg16/examples/scrooll_page.dart';
import 'package:recetasappg16/examples/textfield_page.dart';
import 'package:recetasappg16/examples/textformfield_page.dart';
import 'package:recetasappg16/pages/home_page.dart';

// void main() {
//   runApp(
//     MaterialApp(home: NavigatorRoutesPage(), debugShowCheckedModeBanner: false),
//   );
//   // runApp(MaterialApp(home: ListviewPage(), debugShowCheckedModeBanner: false));
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Clase GoRouter",
    );
  }
}
