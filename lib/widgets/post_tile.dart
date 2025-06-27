import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final int id;
  final String title;
  final String body;
  const PostTile({
    super.key,
    required this.id,
    required this.title,
    required this.body,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Colors.white.withOpacity(.25),
            blurRadius: 20,
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('$id', style: TextStyle(color: Colors.white)),
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          body,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
