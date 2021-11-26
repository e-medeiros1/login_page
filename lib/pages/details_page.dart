// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        //A appbar veio com o botão de voltar porque foi feito o pushNamed
        //e não o pushReplacementNamed
        title: Center(
            child: Text(
          'Notícia ${args.id.toString()}',
          style: TextStyle(fontSize: 24),
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              args.title,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 24),
            Text(
              "Id: ${args.id.toString()}, Autor: ${args.userId}",
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 24),
            Text(
              args.body,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
