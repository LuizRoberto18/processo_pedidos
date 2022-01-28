import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Usuario/ConfigConta.dart';
import 'package:processos_pedidos/views/Compras/carrinho.dart';
import 'package:processos_pedidos/views/Usuario/dados_usuario.dart';
import 'package:processos_pedidos/views/Usuario/favoritos.dart';
import 'package:processos_pedidos/views/home_page.dart';
import 'package:processos_pedidos/views/Pedidos/lista_entregas.dart';
import 'package:processos_pedidos/views/products/lista_produtos.dart';
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

  List<Widget> listTelas = [
    ListaProdutos(),
    Carrinho(),
    Container(),
    DadosUsuario(),
  ];

  List<String> listTitulo = [
    "Produtos",
    "Carrinho",
    'outra tela',
    "Meus dados",
  ];

  @override
  Widget build(BuildContext context) {
    print(_indexSelecionado);
    return Scaffold(
      drawer: DrawerList(),
      appBar: _indexSelecionado == 1 ? null : AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
        title: Text(listTitulo[_indexSelecionado]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.headset_mic_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _indexSelecionado == 1
          ? Container(height: 0)
          : FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorito()));
              },
              child: Icon(Icons.favorite),
              elevation: 2,
            ),
      bottomNavigationBar: _indexSelecionado == 1
          ? Container(height: 0)
          : CostumBottomAppBar(
              tabSelecioada: _tabSelecionada,
              items: [
                CostumAppBarItem(icon: Icons.home),
                CostumAppBarItem(icon: Icons.shopping_cart),
                CostumAppBarItem(icon: Icons.list),
                CostumAppBarItem(icon: Icons.construction),
              ],
            ),
      body: listTelas[_indexSelecionado],
    );
  }
}
