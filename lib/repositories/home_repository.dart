//Criação de um contrato

import 'package:login/models/post_model.dart';

//Contrato
abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
