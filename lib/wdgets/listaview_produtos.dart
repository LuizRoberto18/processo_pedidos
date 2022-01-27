import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/products/produto.dart';

class ListViewProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  _body() {
    List<Produto> produtos = [
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
    ];
    return Container(
      color: Colors.black38,
      child: GridView.builder(
        primary: false,
        padding: EdgeInsets.only(top: 10, left: 4, right: 4),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
        shadowColor: Colors.black,
        elevation: 10,
        color: Colors.blue,
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Center(
                  child: Image.asset(
                "${produto.img}",
                width: 50,
              )),
              ListTile(
                title: Text(
                  "${produto.nome}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("${produto.valor}"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text('DETALHES'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
