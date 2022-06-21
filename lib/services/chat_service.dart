import 'package:chat_app/global/enviroment.dart';
import 'package:chat_app/models/mensajes_response.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/usuario.dart';

class ChatService with ChangeNotifier {
  late Usuario usuarioPara;

  Future<List<Mensaje>> getChat(String usuarioID) async {
    final url = Uri.parse('${Environment.apiUrl}/mensajes/$usuarioID');

    final resp = await http.get(url, headers: {
      'content-Type': 'application/json',
      'x-token': await AuthService.getToken()
    });

    final mensajesResponse = mensajesResponseFromJson(resp.body);

    return mensajesResponse.mensajes;
  }
}
