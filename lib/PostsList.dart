import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsList extends StatefulWidget {
  @override
  PostsListState createState() => PostsListState();
}

class PostsListState extends State<PostsList> {
  @override
  final String apiUrl = "https://randomuser.me/api/?results=10";
  List<dynamic> _posts = [];

  void fetchPosts() async {
    var result = await http.get(apiUrl);
    setState(() {
      _posts = json.decode(result.body)['results'];
    });
  }
}
