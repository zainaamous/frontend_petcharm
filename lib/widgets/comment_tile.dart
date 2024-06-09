import 'package:flutter/material.dart';
import '../models/comment.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;

  CommentTile({required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(comment.userId.substring(0, 1).toUpperCase()),
      ),
      title: Text(comment.content),
      subtitle: Text(comment.timestamp.toString()),
    );
  }
}
