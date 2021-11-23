import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    //Root bundle serve pra se comunicar o assets dentro da pasta
    var value = await rootBundle.loadString('assets/data.json');
    //Lista de postJson para converter a lista do assets(Foi o que eu entendi)
    List postJson = jsonDecode(value);
    //mapeando a lista para o novo tipo lista de PostModel
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
