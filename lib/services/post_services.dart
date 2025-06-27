import 'package:dio/dio.dart';
import 'package:flutter_api_challenges/models/post_model.dart';

class PostServices {
  final dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await dio.get(
        "https://jsonplaceholder.typicode.com/posts",
      );
      if (response.statusCode == 200) {
        List data = response.data;
        return data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Something went wrong [${response.statusCode}]');
      }
    } on DioException catch (dioError) {
      throw Exception("Dio error: ${dioError.message}");
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }
}
