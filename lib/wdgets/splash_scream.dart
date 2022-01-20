import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/lista_entregas.dart';
//import 'package:splashscreen/splashscreen.dart';

class SplashScream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  "images/logo_home.png",
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Projeto",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 49,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
