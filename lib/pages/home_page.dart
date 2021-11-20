// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/pages/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPage(
        
      ),
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Center(child: Text('Welcome!')),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: SizedBox(
          child: Column(
            children: [
              Text(
                'User Form',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              //Nome
              ListTile(
                leading: Icon(Icons.person),
                title: TextField(
                  decoration: InputDecoration(
                    label: Text('Full Name:'),
                    hintText: ('Ex. John'),
                  ),
                ),
              ),
              //Data de nascimento
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: TextField(
                  decoration: InputDecoration(
                    label: Text('Birthday'),
                    hintText: ('01/01/1999'),
                  ),
                ),
              ),
              //Email
              ListTile(
                leading: Icon(Icons.email),
                title: TextField(
                  decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: ('example@email.com'),
                  ),
                ),
              ),
              //Telefone
              ListTile(
                leading: Icon(Icons.phone),
                title: TextField(
                  decoration: InputDecoration(
                    label: Text('Phone Number'),
                    hintText: ('(99)98122-1234'),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Complete sign up!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
