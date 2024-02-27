import 'package:flutter/material.dart';
import 'package:resqbite/presentation/screens/init_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white), //declarar estilos generales
        useMaterial3: true,
      ),
      home: const MyInitPage(), //llama a la página inicial

    );
  }
}