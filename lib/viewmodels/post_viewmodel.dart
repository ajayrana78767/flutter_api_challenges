import 'package:flutter/material.dart';
import 'package:flutter_api_challenges/models/post_model.dart';
import 'package:flutter_api_challenges/services/post_services.dart';

class PostViewmodel with ChangeNotifier {
  final PostServices _postServices = PostServices();
  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
  }

  Future<void> fetchPosts() async {
    setLoading(true);
    try {
      _posts = await _postServices.fetchPosts();
      notifyListeners();
    } catch (e) {
      debugPrint('Error fetching posts: $e');
    } finally {
      setLoading(false);
    }
  }
}
