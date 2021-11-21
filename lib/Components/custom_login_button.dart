// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/controllers/login_controller.dart';

class CustomLoginButton extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButton({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then(
                  (result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/HomePage');
                      print('Login done! Welcome.');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login Failed! Try Again.')));
                      print('Login failed! Check your password!');
                    }
                  },
                );
              },
              child: Text('Sign in!', textScaleFactor: 1.5),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueAccent[600]),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(45)),
              ),
            ),
    );
  }
}
