import 'package:flutter/material.dart';
import 'package:processos_pedidos/wdgets/TextFormField.dart';

class ConfigConta extends StatefulWidget {
  @override
  State<ConfigConta> createState() => _ConfigContaState();
}

class _ConfigContaState extends State<ConfigConta> {
  final _controlLogin = TextEditingController();
  final _controlSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment(0.0, 1.15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/trocar_perfil.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Container(
                  width: 56,
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4.0,
                      color: const Color(0xFFFFFFFF),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(56),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add_a_photo),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
              ElevatedButton(
                onPressed: () {
                  _onClickLogin();
                },
                child: Text("Salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onClickLogin() {
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
