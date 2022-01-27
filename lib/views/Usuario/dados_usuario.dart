import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Pedidos/detalhes_entrega.dart';
import 'package:processos_pedidos/views/Pedidos/detalhes_pedidos.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregas.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregues.dart';
import 'package:processos_pedidos/views/Pedidos/lista_solicitados.dart';
import 'package:processos_pedidos/wdgets/icon_button.dart';
import 'package:processos_pedidos/wdgets/listaview_produtos.dart';

class DadosUsuario extends StatelessWidget {
  const DadosUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              color: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.asset("images/trocar_perfil.png"),
                  title: Text(
                    "Nome do usuario",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text(
                    "Ativo",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: FloatingActionButton(
                      onPressed: () {
                        print(0);
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ListaSolicitados()),
                        );
                      },
                      child: Icon(
                        Icons.work_outlined,
                        size: 50,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ListaEntregas()),
                        );
                      },
                      child: Icon(
                        Icons.add_business_sharp,
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    child: FloatingActionButton(
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ListaEntregues()));
                      },
                      child: Icon(
                        Icons.article_outlined,
                        size: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    _CompoDados("Alterar Conta", Icons.person_pin_outlined,
                        Icons.arrow_forward_sharp, () {}),
                    _CompoDados("Recentes", Icons.access_time,
                        Icons.arrow_forward_sharp, () {}),
                    _CompoDados("Sobre nós", Icons.visibility,
                        Icons.arrow_forward_sharp, () {}),
                    _CompoDados(
                        "Ajuda", Icons.help, Icons.arrow_forward_sharp, () {}),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _CompoDados(
      String titulo, IconData iconeCampo, IconData iconePage, Function onTap) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: ListTile(
          leading: Icon(iconeCampo),
          title: Text(titulo),
          trailing: Icon(iconePage),
          onTap: onTap(),
        ),
      ),
    );
  }
}
