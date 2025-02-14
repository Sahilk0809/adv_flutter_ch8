import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parshing/screens/Lec-8.3/modal/posts_modal.dart';

class PostsProvider extends ChangeNotifier{

  late PostsModal postsModal;

   Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/posts.json');
    final posts = jsonDecode(json);
    postsModal = PostsModal.fromJson(posts);
    notifyListeners();
  }

  PostsProvider(){
    jsonParsing();
  }
}