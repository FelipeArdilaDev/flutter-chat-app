// To parse this JSON data, do
//
//     final usuariosRssponse = usuariosRssponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat_app/models/usuario.dart';

UsuariosRssponse usuariosRssponseFromJson(String str) =>
    UsuariosRssponse.fromJson(json.decode(str));

String usuariosRssponseToJson(UsuariosRssponse data) =>
    json.encode(data.toJson());

class UsuariosRssponse {
  UsuariosRssponse({
    required this.ok,
    required this.usuarios,
    required this.desde,
  });

  bool ok;
  List<Usuario> usuarios;
  int desde;

  factory UsuariosRssponse.fromJson(Map<String, dynamic> json) =>
      UsuariosRssponse(
        ok: json["ok"],
        usuarios: List<Usuario>.from(
            json["usuarios"].map((x) => Usuario.fromJson(x))),
        desde: json["desde"],
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "usuarios": List<dynamic>.from(usuarios.map((x) => x.toJson())),
        "desde": desde,
      };
}
