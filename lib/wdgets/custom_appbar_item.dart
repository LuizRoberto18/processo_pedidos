import 'package:flutter/material.dart';

class CostumAppBarItem {
  IconData? icon;
  bool? temNotificacao;

  CostumAppBarItem({this.icon, this.temNotificacao});
}

class CostumBottomAppBar extends StatefulWidget {
  final ValueChanged<int>? tabSelecioada;
  final List<CostumAppBarItem>? items;

  const CostumBottomAppBar({Key? key, this.tabSelecioada, this.items})
      : super(key: key);

  @override
  _CostumBottomAppBarState createState() => _CostumBottomAppBarState();
}

class _CostumBottomAppBarState extends State<CostumBottomAppBar> {
  int _indexSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabIcon(
        index: index,
        item: widget.items![index],
        onPressed: _atualizarIndex,);
    });
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
      shape: CircularNotchedRectangle(),
    );
  }

  void _atualizarIndex(int index) {
    widget.tabSelecioada!(index);
    setState(() {
      _indexSelecionado = index;
    });
  }

  Widget _buildTabIcon(
      {required int index, required CostumAppBarItem item, required ValueChanged<int> onPressed}) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Icon(
              item.icon,
              color:
                  _indexSelecionado == index ? Colors.purple[500] : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
