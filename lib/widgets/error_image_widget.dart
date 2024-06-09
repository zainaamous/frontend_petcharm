import 'package:flutter/material.dart';

class ErrorImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Icon(Icons.error, color: Colors.red, size: 50),
      ),
    );
  }
}
