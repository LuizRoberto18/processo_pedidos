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
  void initState() {
    // TODO: implement initState
    super.initState();
    _splash(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo_home.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  void _splash(BuildContext context) async {
   await Future.delayed(Duration(seconds: 2));
     print("fim Splash");
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => HomePage()));

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
  //
  //     backgroundColor: Colors.black87,
  //     styleTextUnderTheLoader: TextStyle(),
  //     photoSize: 100.0,
  //     onClick: ()=>print("Flutter Egypt"),
  //     loaderColor: Colors.deepPurple
  // );
  //}
}
