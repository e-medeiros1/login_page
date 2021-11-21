// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:login/Components/custom_login_button.dart';
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
        padding: EdgeInsets.all(40),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Ícone
              Icon(
                Icons.people,
                size: 90,
                color: Colors.blue[600],
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  label: Text('Username:'),
                  hintText: 'Admin',
                ),
                onChanged: _controller.SetLogin,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Password:'),
                ),
                obscureText: true,
                onChanged: _controller.SetSenha,
              ),
              SizedBox(
                height: 40,
              ),
              //ElevatedButton com CircularProgressIndicator + backend de login
              CustomLoginButton(
                loginController: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
