import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/lista_entregas.dart';
import 'package:processos_pedidos/wdgets/TextFormField.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// para construir https://pub.dev/packages/splashscreen
//https://stackoverflow.com/questions/43879103/adding-a-splash-screen-to-flutter-apps
//https://pub.dev/packages/flutter_native_splash
class _HomePageState extends State<HomePage> {
  final _controlLogin = TextEditingController();
  final _controlSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background_home.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        ListView(
          children: [
            SizedBox(
              child: Image.asset(
                "images/logo_home.png",
                height: 200,
                width: 200,
              ),
              // child: Image.asset("images/logo-aviao.png", height: 200, width: 200,),
            ),
            SizedBox(
              height: 20,
            ),
            TextForm(
              "login",
              "Digite um login",
              controller: _controlLogin,
              validator: _validadeLogin,
            ),
            SizedBox(
              height: 25,
            ),
            TextForm(
              "Senha",
              "Digite ua Senha",
              controller: _controlSenha,
              validator: _validadesSenha,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 46,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {
                  _onClickLogin();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListaEntregas()));
                },
                child: Text(
                  "Confirmar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _onClickLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    String login = _controlLogin.text;
    String senha = _controlSenha.text;
    print("login: $login, senha: $senha");
  }

  String? _validadeLogin(String? text) {
    if (text!.isEmpty) {
      return 'Digite  o Login';
    }
  }

  String? _validadesSenha(String? text) {
    if (text!.isEmpty) {
      return 'Digite  a Senha';
    }
    if (text.length < 3) {
      return "A senha precisa ter mais de 3 caracteres";
    }
  }
}
