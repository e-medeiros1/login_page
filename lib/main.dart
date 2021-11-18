// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/splash_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      initialRoute: '/LoginPage',
      routes: {
        '/SplashPage': (_) => SplashPage(),
        '/LoginPage': (_) => LoginPage(),
      },
    );
  }
}
