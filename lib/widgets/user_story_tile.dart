import 'package:flutter/material.dart';

class UserStoryTile extends StatelessWidget {
  final String imageUrl;
  final String username;

  UserStoryTile({required this.imageUrl, required this.username});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(username),
    );
  }
}
