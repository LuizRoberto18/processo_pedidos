import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 20,
        backgroundColor: Colors.grey[300],
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Luiz Roberto"),
              accountEmail: Text("passageiro1829@gmai.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/perfil.jpg"),
                foregroundColor: Colors.purple[500],
              ),
            ),
            _listTile(
                leading: Icons.list,
                trailling: Icons.arrow_downward,
                title: "Filtrar",
                subtitle: "Personalize sua compra",
                onTap: () {
                  Navigator.pop(context);
                  print("favoritos");
                }),
            Container(
              color: Colors.black12,
              child: Divider(
                height: 2,
                color: Colors.black,
              ),
            ),
            _listTile(
                leading: Icons.assignment_late_outlined,
                trailling: Icons.arrow_forward_sharp,
                title: "Traking",
                subtitle: "Passo a passo",
                onTap: () {
                  Navigator.pop(context);
                  print("favoritos");
                }),
            Container(
              color: Colors.black12,
              child: Divider(
                height: 2,
                color: Colors.black,
              ),
            ),
            _listTile(
                leading: Icons.logout,
                trailling: Icons.arrow_forward_sharp,
                title: "Sair",
                subtitle: "",
                onTap: () {
                  Navigator.pop(context);
                  print("favoritos");
                }),
          ],
        ),
      ),
    );
  }

  _listTile(
      {required IconData leading,
      required IconData trailling,
      required String title,
      required String subtitle,
      required Function onTap}) {
    return ListTile(
      leading: Icon(
        leading,
        color: Colors.purple[500],
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(trailling),
      onTap: () => onTap(),
    );
  }
}
