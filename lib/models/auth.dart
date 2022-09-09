import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../utils/constantes.dart';

class Auth with ChangeNotifier {
  Future<void> _authenticate(
      String email, String password, String urlFragmet) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp$urlFragmet?key= ${Constants.webApiKey}';
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    
    print(jsonDecode(response.body));
  }

  Future<void> signup(String email, String password) async {
    _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    _authenticate(email, password, 'signInWithPassword');
  }
}
