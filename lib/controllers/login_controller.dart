// ignore_for_file: unused_field, non_constant_identifier_names, avoid_print
import 'package:flutter/widgets.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);
  String? _login;
  SetLogin(String value) => _login = value;

  String? _senha;
  SetSenha(String value) => _senha = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;

    return _login == 'admin' && _senha == '123';
  }
}
