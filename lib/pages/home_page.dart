// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/controllers/home_controller.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();

    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home - Consumindo API')),
      ),
      backgroundColor: Colors.blue[100],
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              itemCount: list.length,
              itemBuilder: (_, index) => ListTile(
                leading: Text(list[index].id.toString()),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text(
                  list[index].title,
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/DetailsPage');
                },
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          }),
    );
  }
}
