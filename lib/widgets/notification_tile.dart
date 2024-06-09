import 'package:flutter/material.dart';
import '../models/user_notification.dart';

class NotificationTile extends StatelessWidget {
  final UserNotification notification;

  NotificationTile({required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.notifications),
      title: Text(notification.message),
      subtitle: Text(notification.timestamp.toString()),
    );
  }
}
