import 'package:flutter/material.dart';
import 'package:flutter_api_challenges/viewmodels/post_viewmodel.dart';
import 'package:flutter_api_challenges/viewmodels/product_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_api_challenges/views/product_grid_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostViewmodel()),
        ChangeNotifierProvider(create: (_) => ProductViewmodel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter api challenges',
        home: ProductGridScreen(),
      ),
    );
  }
}
