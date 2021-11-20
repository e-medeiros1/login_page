// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Admin'),
            accountEmail: Text('example@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue[100],
            ),
          ),
          ListTile(
            title: Text(
              'Forms',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(Icons.person),
            onTap: Navigator.of(context).pop,
          ),
          ListTile(
            title: Text('Settings', style: TextStyle(fontSize: 16)),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Logout', style: TextStyle(fontSize: 16)),
            leading: Icon(Icons.logout),
            onTap: () => Navigator.pushReplacementNamed(context, '/LoginPage'),
          ),
        ],
      ),
    );
  }
}
