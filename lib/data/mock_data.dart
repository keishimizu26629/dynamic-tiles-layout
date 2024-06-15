import '../domain/post.dart';

Future<List<Post>> fetchMockPosts() async {
  return [
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150/00FFFF',
      content: 'This is one image post.',
      postImageUrls: [
        'https://via.placeholder.com/600',
      ],
    ),
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150/00FFFF',
      content: 'This is two images post.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FFF000',
      ],
    ),
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150/00FFFF',
      content: 'This is a 3 images post.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FFF000',
        'https://via.placeholder.com/600/FF0000',
      ],
    ),
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150/00FFFF',
      content: 'Another mock post content.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FFF000',
        'https://via.placeholder.com/600/FF0000',
        'https://via.placeholder.com/600/0000FF',
      ],
    ),
    Post(
      userName: 'Jane Smith',
      userImageUrl: 'https://via.placeholder.com/150/00FFFF',
      content: 'Another mock post content.',
      postImageUrls: [
        'https://via.placeholder.com/600',
        'https://via.placeholder.com/600/FFF000',
        'https://via.placeholder.com/600/FF0000',
        'https://via.placeholder.com/600/005511',
      ],
    ),
  ];
}
