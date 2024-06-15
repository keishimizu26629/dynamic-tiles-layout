import '../domain/post.dart';

Future<List<Post>> fetchFirebasePosts() async {
  return [
    Post(
      userName: 'Firebase User',
      userImageUrl: 'https://via.placeholder.com/150',
      content: 'This is a Firebase post content.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FFFF00',
      ],
    ),
  ];
}
