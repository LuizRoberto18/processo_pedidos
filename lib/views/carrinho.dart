import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processos_pedidos/products/produto.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_box_outline_blank),
                color: Colors.deepPurple,
              ),
              Text("Selecionar tudo"),
              SizedBox(
                width: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 6),
                child: VerticalDivider(
                  width: 5,
                  color: Colors.black,
                ),
              ),
              Text(
                "Total",
                style: TextStyle(color: Color(0xFF2B0868), fontSize: 20),
              ),
              SizedBox(
                width: 60,
              ),

              ElevatedButton(

                onPressed: () {},
                child: Text("Continuar"),
              ),
            ],
          ),
        ),
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
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
      Produto(
          nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
    ];
    return Container(

      color: Colors.black,
      child: GridView.builder(
        primary: true,

        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisExtent: 200),
        itemCount: produtos.length,

        itemBuilder: (context, index) {
          return _itemView(produtos, index);
        },
      ),
    );
  }

  _itemView(List<Produto> produtos, int index) {
    Produto produto = produtos[index];
    return Card(
      color: Colors.grey[400],
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: _img("images/fone_ouvido.jpg"),
              title: Text(
                "${produto.nome}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                "${produto.valor}",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Text("<<<<<<<< Valor do frete >>>>>>>",style: TextStyle(fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.check_box_outline_blank),
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
