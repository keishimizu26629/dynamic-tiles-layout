import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/post.dart';
import '../data/mock_data.dart';
import '../data/firebase_data.dart';

final isMockProvider = StateProvider<bool>((ref) => true);

final postsProvider = FutureProvider<List<Post>>((ref) {
  final isMock = ref.watch(isMockProvider);
  if (isMock) {
    return fetchMockPosts();
  } else {
    return fetchFirebasePosts();
  }
});
