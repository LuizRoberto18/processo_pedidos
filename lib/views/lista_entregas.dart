import 'package:flutter/material.dart';
import 'package:processos_pedidos/products/produto.dart';

class ListaEntregas extends StatelessWidget {
  const ListaEntregas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
        title: Text("Entregas"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(
              Icons.youtube_searched_for_sharp,
              size: 30,
            ),
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
    ];
    return Container(
      color: Colors.black45,
      child: GridView.builder(
        primary: false,
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        borderOnForeground: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //envolver todooo card para usar BoxShadow
            Container(
              child: _img("images/fone_ouvido.jpg"),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  "${produto.nome}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  "${produto.valor}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(

              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("DETALHES"),
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
