import 'package:chat_app/models/usuarios_response.dart';
import 'package:http/http.dart' as http;

import 'package:chat_app/global/enviroment.dart';
import 'package:chat_app/models/usuario.dart';

import 'package:chat_app/services/auth_service.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final uri = Uri.parse('${Environment.apiUrl}/usuarios');
      final resp = await http.get(uri, headers: {
        'content-Type': 'application/json',
        'x-token': await AuthService.getToken()
      });

      final usuariosRssponse = usuariosRssponseFromJson(resp.body);
      return usuariosRssponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
