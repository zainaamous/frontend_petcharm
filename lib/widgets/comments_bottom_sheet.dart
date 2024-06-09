import 'package:flutter/material.dart';

class CommentsBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 400,
      child: Column(
        children: [
          Text(
            'Comments',
            style: Theme.of(context).textTheme.headline1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Comment $index'),
                  subtitle: Text('User $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
