import 'package:flutter/material.dart';
import 'package:processos_pedidos/products/produto.dart';
import 'package:processos_pedidos/views/carrinho.dart';
import 'package:processos_pedidos/views/detalhes.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/wdgets/custom_appbar_item.dart';
import 'package:processos_pedidos/wdgets/scaffold.dart';

class Favorito extends StatefulWidget {
  @override
  State<Favorito> createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  int _indexSelecionado = 0;


  void _tabSelecionada(int index) {
    print(index);
    setState(() {
      _indexSelecionado = index;

    });
  }

  List<Widget> list = [
    _body(),
    Carrinho(),
    HomePage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    //PRECISA RETORNAR O CORPO DA PAGE ATUAL
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
        title: Text("Lista de Produtos"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite),
        elevation: 2,
      ),
      bottomNavigationBar: CostumBottomAppBar(
        tabSelecioada: _tabSelecionada,
        items: [
          CostumAppBarItem(icon: Icons.home),
          CostumAppBarItem(icon: Icons.shopping_cart),
          CostumAppBarItem(icon: Icons.list),
          CostumAppBarItem(icon: Icons.construction),
        ],
      ),
      body: list[_indexSelecionado],
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
                    onPressed: () {
                      print(0);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detalhes()));
                    },
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

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
