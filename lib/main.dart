import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/lista_entregas.dart';
import 'package:processos_pedidos/wdgets/splash_scream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //VARIAVEL PARA GUARDAR O TEMA DO APP
    final ThemeData tema = ThemeData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: tema.copyWith(
          colorScheme: tema.colorScheme.copyWith(
        primary: Colors.deepPurpleAccent,
      )),
      home: HomePage(),
    );
  }
}
