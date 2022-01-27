import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:processos_pedidos/views/products/produto.dart';

class ListaEntregues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A pagar"),
        actions: [
          Icon(Icons.manage_search),
          Icon(Icons.headphones),
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
            crossAxisCount: 1, mainAxisExtent: 400),
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
                    onPressed: () {},
                    child: Text("Detalhes"),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Pendente",
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " Valor Total: $_valorTotal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[500],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("ultima loclização"),
                SizedBox(
                  width: 200,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
              ],
            ),
            Row(
              children: <Widget>[
                Text("Confirme o pagamento até ..."),
                SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Comprar"),
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
