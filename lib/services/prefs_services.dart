import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefServices {
  static final String _key = 'key';
//Método
//Static serve para "consumir menos memória" na aplicação
  static save(String user) async {
    //Serviço Singleton = Mesma instância do início ao fim, independente
    //do lugar que ele seja chamado
    var prefs = await SharedPreferences.getInstance();
//Salva o user no Json e encoda
    prefs.setString(
        _key,
        //Mapa - String Json
        jsonEncode({
          "user": user,
          "isAuth": true,
        }));
  }

//Decoda o user
  static Future<bool> isAuth() async {
    var prefs = await SharedPreferences.getInstance();

    var jsonResult = prefs.getString(_key);
    if (jsonResult != null) {
      var mapUser = jsonDecode(jsonResult);
      return mapUser['isAuth'];
    }
    return false;
  }

  static logout() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
