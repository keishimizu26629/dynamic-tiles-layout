import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/post_providers.dart';
import '../domain/post.dart';

class PostList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider);

    return posts.when(
      data: (postList) {
        if (postList.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('No posts available.'),
          );
        }
        return ListView.builder(
          itemCount: postList.length,
          itemBuilder: (context, index) {
            final post = postList[index];
            return PostCard(post: post);
          },
        );
      },
      loading: () => CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(post.userImageUrl), // 投稿者の画像
                  radius: 20.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  post.userName, // 投稿者の名前
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              post.content, // 投稿内容
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              children: post.postImageUrls.map((url) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.network(url), // 投稿画像
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
