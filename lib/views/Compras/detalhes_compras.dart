import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/products/lista_produtos.dart';
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
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Comprar",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 400,
                      width: 400,
                      child: Image.asset(
                        "images/fone_ouvido.jpg",
                        fit: BoxFit.cover,
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
                              width: 170,
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
                              onPressed: () {
                                _descricao();
                              },
                              icon: Icon(Icons.arrow_downward),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _descricao() {

    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text('text'),
        ),
      ),
    );
  }
}
