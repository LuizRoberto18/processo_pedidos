import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Compras/carrinho.dart';
import 'package:processos_pedidos/views/Compras/detalhes_compras.dart';
import 'package:processos_pedidos/views/Pedidos/detalhes_pedidos.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/products/produto.dart';
import 'package:processos_pedidos/wdgets/custom_appbar_item.dart';
import 'package:processos_pedidos/wdgets/icon_button.dart';
import 'package:processos_pedidos/wdgets/scaffold.dart';

import '../Usuario/favoritos.dart';

// A CAMINHO
class ListaEntregas extends StatefulWidget {
  @override
  State<ListaEntregas> createState() => _ListaEntregasState();
}

class _ListaEntregasState extends State<ListaEntregas> {
  @override
  Widget build(BuildContext context) {
    //PRECISA RETORNAR O CORPO DA PAGE ATUAL
    return Scaffold(
      appBar: AppBar(
        title: Text("A Caminho"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.headphones),
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Produto> produtos = [
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
    ];
    return Container(
      color: Colors.grey[400],
      child: GridView.builder(
        primary: true,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: 425),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return _itemView(produtos, index);
        },
      ),
    );
  }

  _itemView(List<Produto> produtos, int index) {
    Produto produto = produtos[index];
    double _valorTotal = produto.valor! + produto.valor!;
    return Card(
      color: Colors.grey[200],
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetalhesPedido()));
                    },
                    child: Text("Detalhes do produto"),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Data prevista",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple[500],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(bottom: 10),
              leading: _img("images/fone_ouvido.jpg"),
              title: Text(
                "${produto.nome}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                "cor/modelo",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Text("qtdeX"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " Valor item: ${produto.valor!} ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[500],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            ListTile(
              leading: _img("images/fone_ouvido.jpg"),
              title: Text(
                "${produto.nome}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                "cor/modelo",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text("qtdeX"),
            ),
            Divider(
              height: 2,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " Valor item: ${produto.valor!}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[500],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2,
              color: Colors.grey[400],
            ),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " Valor Total: $_valorTotal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[500],
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Detalhes da entrega"),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, ),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("verificar Produto"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Chegou"),
                ),
              ],
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
