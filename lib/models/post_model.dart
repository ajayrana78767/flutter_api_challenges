class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  // Deserialize JSON to Dart oject
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
  // Serialize Dart object to JSON
  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'body': body};
  }
}
