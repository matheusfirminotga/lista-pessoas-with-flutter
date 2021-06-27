import 'package:flutter/material.dart';
import 'package:lista_pessoas/models/user.dart';

class UserCard extends StatelessWidget {
  final User _user;
  const UserCard(this._user);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 45,
            child: Icon(
              Icons.person,
              color: Colors.blue,
              size: 60,
            ),
          ),
          SizedBox(height: 15),
          Text(
            _user.fullName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mail,
                size: 20,
                color: Colors.white.withOpacity(0.8),
              ),
              SizedBox(width: 10),
              Text(
                _user.emailAddress,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                size: 20,
                color: Colors.white.withOpacity(0.8),
              ),
              SizedBox(width: 10),
              Text(
                _user.numberTelephone,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
