import 'dart:convert';

import 'package:flutterapp/state_management/mobx/model/post.dart';
import 'package:flutterapp/state_management/mobx/model/user.dart';
import 'package:http/http.dart' as http;


class NetworkService {

  List<User> users = List();
  List<Post> posts = List();

  Future getData(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      users = (data['data'] as List).map((json) {
        return User.fromJSON(json);
      }).toList();
      return users;
    } else {
      print("Error in URL");
    }
  }

  Future getPosts(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      posts = (data as List).map((json) {
        return Post.fromJSON(json);
      }).toList();
      return posts;
    } else {
      print("Error in URL");
    }
  }
}