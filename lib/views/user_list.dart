import 'package:flutter/material.dart';

import 'package:lista_pessoas/models/user.dart';
import 'package:lista_pessoas/views/create_user.dart';
import 'package:lista_pessoas/widgets/user_tile.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

List<User> listUsers = [];

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        centerTitle: true,
      ),
      body: Visibility(
        visible: listUsers.length > 0,
        replacement: Center(
          child: Text(
            'Nenhum Usuário!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: ListView.builder(
          itemCount: listUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return UserTile(listUsers.elementAt(index));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Inserir novo Usuário',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateUser(),
            ),
          );
        },
      ),
    );
  }
}
