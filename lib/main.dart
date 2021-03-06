import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Compras/carrinho.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregues.dart';
import 'package:processos_pedidos/views/Pedidos/lista_solicitados.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregas.dart';
import 'package:processos_pedidos/views/products/lista_produtos.dart';
import 'package:processos_pedidos/wdgets/scaffold.dart';
import 'package:processos_pedidos/wdgets/splash_scream.dart';

import 'views/Compras/finalizar_compra.dart';

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
          primary: Colors.purple[700],
          secondary: Colors.purple[500],
        ),
        inputDecorationTheme: tema.inputDecorationTheme.copyWith(
          fillColor: Colors.white,
        ),
      ),
      home: SplashScreamTela(),
    );
  }
}
