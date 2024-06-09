import 'package:flutter/material.dart';
import 'package:petcharm_frontend_enh/widgets/post_card.dart';
import 'package:petcharm_frontend_enh/widgets/custom_animations.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomFadeIn(
            child: PostCard(
              username: 'User $index',
              content: 'This is the content of post $index. Here is some additional text to simulate a longer post content.',
              time: '2h ago',
              imageUrl: 'https://via.placeholder.com/150',
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
