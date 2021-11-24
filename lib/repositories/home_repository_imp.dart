import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      //Diferença do DIO pro HTTP: Não precisa usar decode do json e tem mais funcionalidades
      var response =
          await Dio().get('http://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
