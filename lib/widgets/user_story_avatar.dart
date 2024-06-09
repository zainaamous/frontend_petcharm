import 'package:flutter/material.dart';

class UserStoryAvatar extends StatelessWidget {
  final String imageUrl;
  final String username;

  UserStoryAvatar({required this.imageUrl, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Text(username, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
