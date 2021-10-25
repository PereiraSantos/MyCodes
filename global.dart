library projeto_exemplo.globals;

String? token;

class Token{
  String? getToken() => token;
  void setToken(String newToken) => token = newToken;
}
///uso
import 'package:projeto_exemplo2/globals.dart' as globals;

globals.Token().getToken()