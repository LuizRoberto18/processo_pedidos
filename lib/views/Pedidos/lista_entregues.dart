import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processos_pedidos/views/Pedidos/detalhes_pedidos.dart';
import 'package:processos_pedidos/views/products/produto.dart';
import 'package:processos_pedidos/wdgets/TextFormField.dart';

//FINALIZADO
class ListaEntregues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finalizados"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => _barraPesquisa(context)),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: _body(context),
    );
  }

  _body(context) {
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
      color: Colors.grey[400],
      child: GridView.builder(
        primary: true,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: 340),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return _itemView(produtos, index, context);
        },
      ),
    );
  }

  _itemView(List<Produto> produtos, int index, context) {
    Produto produto = produtos[index];
    double _valorTotal = produto.valor! + produto.valor!;
    return Card(
      color: Colors.grey[200],
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetalhesPedido()),
                      );
                    },
                    child: Text("Detalhes do produto"),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Entregue",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple[500],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(bottom: 10),
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
              trailing: Text("qtdeX"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " Valor item: ${produto.valor!} ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[500],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),



            Container(
              height: 30,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      " Valor Total: ${produto.valor}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[500],
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Detalhes da entrega"),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Divider(
                height: 2,
                color: Colors.grey[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Avaliar"),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Comprar novamente"),
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

  _barraPesquisa(context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                ),
                hintText: "Pesquisar",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: _body(context),
    );
  }
}
