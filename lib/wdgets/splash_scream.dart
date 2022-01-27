import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregas.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashScreamTela extends StatefulWidget {
  @override
  State<SplashScreamTela> createState() => _SplashScreamTelaState();
}

class _SplashScreamTelaState extends State<SplashScreamTela> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // Widget _introScream() {
  // return SplashScreen(
  //     seconds: 3,
  //     navigateAfterSeconds: HomePage(),
  //     title: Text('Projeto entregas',
  //       style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //           fontSize: 20.0
  //       ),),
  //     image: Image.asset("images/logo_home.png"),
  //     backgroundColor: Colors.black87,
  //     styleTextUnderTheLoader: TextStyle(),
  //     photoSize: 100.0,
  //     onClick: ()=>print("Flutter Egypt"),
  //     loaderColor: Colors.deepPurple
  // );
  //}
}
