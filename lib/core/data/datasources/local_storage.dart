import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  limparDados() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  remover(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<dynamic> ler(String key) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      if (prefs.containsKey(key)) {
        final res = prefs.getString(key);
        return res;
      }
    } catch (e) {
      print(
          'A chave ($key) não existe no contexto atual de \'Shared Preferences\'!');
      return null;
    }
  }

  Future salvar(String chave, String valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(chave, valor);
  }
}
