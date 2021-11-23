import 'package:flutter/cupertino.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);
//Objeto
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

//Quando o método fetch for chamado ele vai no homeRepository pegar o getList e
//devolver para o posts(ValueNotifier) um value(PostModel)
  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
