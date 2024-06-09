import 'story.dart';

class UserStory extends Story {
  final String userId;
  final String username;

  UserStory({
    required String id,
    required String title,
    required String imageUrl,
    required this.userId,
    required this.username,
  }) : super(id: id, title: title, imageUrl: imageUrl);
}
