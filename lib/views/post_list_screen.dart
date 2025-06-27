import 'package:flutter/material.dart';
import 'package:flutter_api_challenges/viewmodels/post_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_api_challenges/widgets/post_tile.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});
  @override
  State<PostListScreen> createState() => _PostListScreen();
}

class _PostListScreen extends State<PostListScreen> {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PostViewmodel>(context, listen: false).fetchPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Posts', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Consumer<PostViewmodel>(
        builder: (context, postView, child) {
          if (postView.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (postView.posts.isEmpty) {
            return const Center(child: Text('No posts found.'));
          } else {
            return ListView.builder(
              itemCount: postView.posts.length,
              itemBuilder: (context, index) {
                final post = postView.posts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PostTile(
                    id: post.id,
                    title: post.title,
                    body: post.body,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
