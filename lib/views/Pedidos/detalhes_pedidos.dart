import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/products/produto.dart';

class DetalhesPedido extends StatelessWidget {
  const DetalhesPedido({Key? key}) : super(key: key);

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
     List<Produto> produtos = [
       Produto(
           nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
       Produto(
           nome: "Fone de Ouvido", img: "images/fone_ouvido.jpg", valor: 302.0),
     ];
    // Produto produto = produtos[index];

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 150,
                color: Colors.amber,
                child: ListTile(

                  leading: _img("images/fone_ouvido.jpg"),
                  // title: Text(
                  //   "${produto.nome}",
                  //   maxLines: 1,
                  //   overflow: TextOverflow.ellipsis,
                  //   style: TextStyle(fontSize: 22),
                  // ),
                  subtitle: Text(
                    "cor/modelo",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: Text("qtdeX"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ],
    );
  }
  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
