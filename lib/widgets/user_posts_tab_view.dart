import 'package:flutter/material.dart';

class UserPostsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Posts'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Posts'),
              Tab(text: 'Likes'),
              Tab(text: 'Comments'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('User Posts')),
            Center(child: Text('Liked Posts')),
            Center(child: Text('User Comments')),
          ],
        ),
      ),
    );
  }
}
