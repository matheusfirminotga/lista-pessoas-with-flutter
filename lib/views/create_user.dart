import 'package:flutter/material.dart';

import 'package:lista_pessoas/models/user.dart';
import 'package:lista_pessoas/views/user_list.dart';
import 'package:lista_pessoas/widgets/text_input.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final _formKey = GlobalKey<FormState>();
  final _fullName = TextEditingController();
  final _emailAddress = TextEditingController();
  final _numberTelephone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Novo Usuário'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextInput(_fullName, 'Nome Completo'),
              Container(height: 30),
              TextInput(_emailAddress, 'E-mail'),
              Container(height: 30),
              TextInput(_numberTelephone, 'Telefone'),
              Container(height: 50),
              Container(
                height: 60,
                width: double.infinity,
                child: TextButton.icon(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(color: Colors.green, width: 2.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  icon: Icon(
                    Icons.save,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Salvar',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(
                        () {
                          listUsers.add(
                            User(
                              fullName: _fullName.text,
                              emailAddress: _emailAddress.text,
                              numberTelephone: _numberTelephone.text,
                            ),
                          );
                        },
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (ctz) => UserList()),
                        (route) => false,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
