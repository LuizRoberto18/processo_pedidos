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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      
      home: ListaEntregas(),
    );
  }
}
