import 'package:flutter/material.dart';
import 'package:flutter_api_challenges/viewmodels/post_viewmodel.dart';
import 'package:flutter_api_challenges/views/post_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PostViewmodel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter api challenges',
        home: PostListScreen(),
      ),
    );
  }
}
