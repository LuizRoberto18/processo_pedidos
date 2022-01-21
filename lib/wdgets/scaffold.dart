import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/lista_entregas.dart';
import 'package:processos_pedidos/wdgets/custom_appbar_item.dart';

class ScaffoldCorpo extends StatefulWidget {
  @override
  _ScaffoldCorpoState createState() => _ScaffoldCorpoState();
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
    Container(
      color: Colors.black,
      height: 200,
      width: 200,
    ),
    ListaEntregas(),
    HomePage(),
    Container(),
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
}
