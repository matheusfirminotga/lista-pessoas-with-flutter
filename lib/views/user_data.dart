import 'package:flutter/material.dart';

import 'package:lista_pessoas/models/user.dart';
import 'package:lista_pessoas/views/user_list.dart';
import 'package:lista_pessoas/widgets/user_card.dart';

class UserData extends StatefulWidget {
  final User _user;
  const UserData(this._user);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados do Usuário'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UserCard(widget._user),
          TextButton.icon(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(color: Colors.red),
              ),
            ),
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
            label: Text(
              'Remover Usuário',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              setState(() {
                listUsers.remove(widget._user);
              });
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (ctz) => UserList()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
