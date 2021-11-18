// ignore_for_file: unused_field, non_constant_identifier_names

class LoginController {
  String? _login;
  SetLogin(String value) => _login = value;

  String? _senha;
  SetSenha(String value) => _senha = value;

  Future<bool> auth() async {
    await Future.delayed(Duration(seconds: 2));
    print('Login: $_login, Senha: $_senha');
    return false;
  }
}
