// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Container(
        padding: EdgeInsets.all(60),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                size: 90,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('Login'), hintText: 'example@email.com'),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Senha'),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Entrar', textScaleFactor: 1.3),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
