import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsList extends StatefulWidget {
  @override
  PostsListState createState() => PostsListState();
}

class PostsListState extends State<PostsList> {
  final String apiUrl = "https://randomuser.me/api/?results=10";
  List<dynamic> _posts = [];

  void fetchPosts() async {
    var result = await http.get(apiUrl);
    setState(() {
      _posts = json.decode(result.body)['results'];
    });
  }

  String _name(dynamic post) {
    return post['name']['title'] +
        " " +
        post['name']['first'] +
        " " +
        post['name']['last'];
  }

  String _location(dynamic user) {
    return user['location']['country'];
  }

  String _age(Map<dynamic, dynamic> user) {
    return "Age: " + user['dob']['age'].toString();
  }

  Widget _buildList() {
    return _posts.length != 0
        ? Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.black,
            child: CustomScrollView(
              slivers: [
                CupertinoSliverRefreshControl(
                  onRefresh: _getData,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 100.0,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return CupertinoButton(
                          borderRadius: BorderRadius.circular(25),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  _posts[index]['picture']['large'])),
                          onPressed: () => print('touching my circles'),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: _posts.length,
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  _posts[index]['picture']['large'])),
                          title: Text(_name(_posts[index])),
                          subtitle: Text(_location(_posts[index])),
                          trailing: Text(_age(_posts[index])),
                        )
                      ],
                    ),
                  );
                }, childCount: _posts.length))
              ],
            ))
        : Center(child: CupertinoActivityIndicator());
  }

  Future<void> _getData() async {
    setState(() {
      fetchPosts();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.black,
      ),
      child: Container(
        child: _buildList(),
      ),
    );
  }
}
