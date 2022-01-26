import 'package:flutter/material.dart';
import 'package:processos_pedidos/products/produto.dart';
import 'package:processos_pedidos/views/carrinho.dart';
import 'package:processos_pedidos/views/detalhes.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/wdgets/custom_appbar_item.dart';
import 'package:processos_pedidos/wdgets/icon_button.dart';
import 'package:processos_pedidos/wdgets/scaffold.dart';

import 'favoritos.dart';

class ListaEntregas extends StatefulWidget {
  @override
  State<ListaEntregas> createState() => _ListaEntregasState();
}

class _ListaEntregasState extends State<ListaEntregas> {
  @override
  Widget build(BuildContext context) {
    //PRECISA RETORNAR O CORPO DA PAGE ATUAL
    return _body();
  }

  _body() {
    List<Produto> produtos = [
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
    ];
    return Container(
      color: Colors.black38,
      child: GridView.builder(
        primary: false,
        padding: EdgeInsets.only(top: 5, left: 4, right: 4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 314),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return _itemView(produtos, index);
        },
      ),
    );
  }

  _itemView(List<Produto> produtos, int index) {
    Produto produto = produtos[index];
    return Center(
      child: Card(
        semanticContainer: true,
        shadowColor: Colors.black,
        elevation: 7,
color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: 50,
              child: _img("${produto.img}"),
            ),
            Container(


              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      "${produto.nome}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text("${produto.valor}"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: Text('DETALHES'),
                        onPressed: () {
                          print(0);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Detalhes()));
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButtonPerson(
                        onPress: () {},
                        icone: Icons.favorite_border,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
