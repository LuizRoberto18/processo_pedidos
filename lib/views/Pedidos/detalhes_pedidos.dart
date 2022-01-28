import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Usuario/ConfigConta.dart';
import 'package:processos_pedidos/views/products/produto.dart';

class DetalhesPedido extends StatelessWidget {
  Produto produto = Produto(
      nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do Pedido"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.grey[400],
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.grey[100],
                  child: Center(
                    child: ListTile(
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
                      trailing: Text(
                        "qtdeX",
                        style: TextStyle(
                          color: Colors.purple[500],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Seu Produto está a caminho",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "data prevista xx/xx/xxxx",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.accessible_forward_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.grey[100],
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "valor do produto :",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "${produto.valor}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                          child: Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "valor do frete :",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                          child: Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Desconto do produto :",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "-0.00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                          child: Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cupom de desconto :",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "-0.00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                          child: Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Desconto Funcionario :",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "-50.2",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, top: 4),
                          child: Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Valor total :",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "300.0",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.accessible_forward_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Local de envio",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 185,
                                    ),
                                    Text(
                                      "Ver",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple[500],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ultima localização",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add_location),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Local de entrega",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 170,
                                    ),
                                    Text(
                                      "Ver",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple[500],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sua localização",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
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
