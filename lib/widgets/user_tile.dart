import 'package:flutter/material.dart';
import 'package:lista_pessoas/models/user.dart';
import 'package:lista_pessoas/views/user_data.dart';

class UserTile extends StatelessWidget {
  final User usuario;
  const UserTile(this.usuario);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(usuario.fullName),
      subtitle: Text(usuario.emailAddress),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserData(usuario),
          ),
        );
      },
    );
  }
}
