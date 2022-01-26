import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/ConfigConta.dart';
import 'package:processos_pedidos/views/carrinho.dart';
import 'package:processos_pedidos/views/dados_usuario.dart';
import 'package:processos_pedidos/views/favoritos.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/lista_entregas.dart';
import 'package:processos_pedidos/wdgets/custom_appbar_item.dart';
import 'package:processos_pedidos/wdgets/drawer_list.dart';

class ScaffoldCorpo extends StatefulWidget {
  @override
  _ScaffoldCorpoState createState() => _ScaffoldCorpoState();
  // Widget body;
  // ScaffoldCorpo(this.body);
}

class _ScaffoldCorpoState extends State<ScaffoldCorpo> {
  int _indexSelecionado = 0;


  void _tabSelecionada(int index) {
    print(index);
    setState(() {
      _indexSelecionado = index;

    });
  }

  List<Widget> list = [
    ListaEntregas(),
    Carrinho(),
    DrawerList(),
    DadosUsuario(),
  ];

  @override
  Widget build(BuildContext context) {
    print(_indexSelecionado);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
        title: Text("Scaffold"),
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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Favorito()));
        },
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
}
