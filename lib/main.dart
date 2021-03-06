// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/details_page.dart';
import 'package:login/pages/home_page.dart';
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
      themeMode: ThemeMode.light,
      initialRoute: '/SplashPage',
      routes: {
        '/SplashPage': (_) => SplashPage(),
        '/LoginPage': (_) => LoginPage(),
        '/HomePage': (_) => HomePage(),
        '/DetailsPage': (_) => DetailsPage(),
      },
    );
  }
}
