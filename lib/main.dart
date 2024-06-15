import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/post_list.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SNS Post Sample'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PostList(),
        ),
      ),
    );
  }
}
