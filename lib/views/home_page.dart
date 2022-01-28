import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregas.dart';
import 'package:processos_pedidos/views/products/lista_produtos.dart';
import 'package:processos_pedidos/wdgets/TextFormField.dart';
import 'package:processos_pedidos/wdgets/scaffold.dart';

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
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 25.0, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: ListView(
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
                    height: 25,
                  ),
                  TextForm(
                    "login",
                    "Digite um login",
                    controller: _controlLogin,
                    validator: _validadeLogin,
                  ),
                  SizedBox(
                    height: 30,
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
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _onClickLogin();
                        //  Navigator.push(
                        //context,
                        //MaterialPageRoute(
                        //  builder: (context) => ListaEntregas()));
                      },
                      child: SizedBox.expand(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Login com Google",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              child: SizedBox(
                                child: Image.asset("images/icone_google.png"),
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onClickLogin() {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScaffoldCorpo()));
    }

    String login = _controlLogin.text;
    String senha = _controlSenha.text;
    print("login: $login, senha: $senha");
  }

  String? _validadeLogin(String? text) {
    if (text!.isEmpty) {
      return 'Digite  o Login';
    }
    if (text.length < 3) {
      return "o Login precisa ter mais de 3 caracteres";
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
