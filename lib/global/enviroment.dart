import 'dart:io';

class Enviroment {
  static String apiUrl = Platform.isAndroid
      ? 'http://192.168.1.31:3000/api'
      : 'localhost:3000/api';
  static String socketUrl =
      Platform.isAndroid ? 'http://192.168.1.31:3000' : 'localhost:3000';
}
