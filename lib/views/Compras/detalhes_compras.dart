import 'package:flutter/material.dart';

import 'package:processos_pedidos/views/products/produto.dart';
import 'package:processos_pedidos/wdgets/icon_button.dart';
import 'package:processos_pedidos/wdgets/listaview_produtos.dart';

class DetalhesCompras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    Produto? produto;
    Produto(
        nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.headset_mic_outlined),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Compar",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListView(
              children: [
                SizedBox(
                  child: Image.asset("images/fone_ouvido.jpg"),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey[300],
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButtonPerson(
                          onPress: () {},
                          icone: Icons.shopping_cart,
                        ),
                        IconButtonPerson(
                          onPress: () {},
                          icone: Icons.favorite,
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset("images/logo_whats.png"),
                        ),
                        SizedBox(
                          height: 45,
                          width: 40,
                          child: Image.asset("images/logo_insta.png"),
                        ),
                        IconButtonPerson(
                          onPress: () {},
                          icone: Icons.more_vert,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey[300],
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "DESCRIÇÃO",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_downward),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(child: ListViewProdutos()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
