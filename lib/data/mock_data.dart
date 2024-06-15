import '../domain/post.dart';

Future<List<Post>> fetchMockPosts() async {
  return [
    Post(
      userName: 'John Doe',
      userImageUrl: 'https://via.placeholder.com/150',
      content: 'This is a mock post content.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/0000FF',
      ],
    ),
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150',
      content: 'Another mock post content.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FF0000',
      ],
    ),
  ];
}
