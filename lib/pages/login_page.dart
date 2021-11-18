// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:login/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  //Administrando o LoginController
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
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
                color: Colors.blue,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('Login'), hintText: 'example@email.com'),
                onChanged: _controller.SetLogin,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Senha'),
                ),
                obscureText: true,
                onChanged: _controller.SetSenha,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.auth();
                },
                child: Text('Entrar', textScaleFactor: 1.3),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[400])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
