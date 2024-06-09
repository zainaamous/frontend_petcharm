import 'package:flutter/material.dart';
import 'package:petcharm_frontend_enh/common/common.dart';
import 'package:petcharm_frontend_enh/models/models.dart';
import 'package:petcharm_frontend_enh/pages/pages.dart';
import 'package:petcharm_frontend_enh/widgets/widgets.dart';

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String content;
  final String time;
  final String imageUrl;

  PostCard({
    required this.username,
    required this.content,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: Theme.of(context).textTheme.headline1),
                    Text(time, style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(content, style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 10),
            imageUrl.isNotEmpty
                ? ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl),
            )
                : Container(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.comment_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.share_outlined),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
