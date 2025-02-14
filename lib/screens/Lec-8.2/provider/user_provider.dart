import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parshing/screens/Lec-8.2/modal/user_modal.dart';

class UserProvider extends ChangeNotifier {
  List<UserModal> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/user.json');
    List user = jsonDecode(json);
    userList = user.map((e) => UserModal.fromJson(e),).toList();
  }

  UserProvider() {
    jsonParsing();
  }
}