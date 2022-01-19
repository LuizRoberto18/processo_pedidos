import 'package:flutter/material.dart';

class ListaEntregas extends StatelessWidget {
  const ListaEntregas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entregas"),
        actions: [
          Icon(Icons.youtube_searched_for_sharp),
        ],
      ),
    );
  }
}
