import 'package:flutter/material.dart';
import 'package:page_test/post.dart';
import 'package:page_test/user.dart';

class NewfeedPage extends StatefulWidget {
  const NewfeedPage({Key? key}) : super(key: key);

  @override
  State<NewfeedPage> createState() => _NewfeedPageState();
}

class _NewfeedPageState extends State<NewfeedPage> {
  final posts = <Post>[];
  @override
  void initState() {
    final user = User(
        'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
        'Vinhomes Starcity');
    final post1 = Post(
        "21/07/2022",
        "avcabc",
        "abc",
        "xyz",
        [
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'
        ],
        user);
    final post2 = Post(
        "21/07/2022",
        "avcabc",
        "abc",
        "xyz",
        [
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'
        ],
        user);
    final post3 = Post(
        "21/07/2022",
        "avcabc",
        "abc",
        "xyz",
        [
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'
        ],
        user);
    ;
    posts.add(post1);
    posts.add(post2);
    posts.add(post3);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Newfeed'),
        centerTitle: true,
      ),
      body: buildbody(),
    );
  }

  Widget buildbody() {
    return ListView.builder(
      itemBuilder: (context, index) {
        final post = posts[index];
        return buildPost(post);
      },
      itemCount: posts.length,
    );
  }

  Widget buildPost(Post post) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 14,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: Image.network(
                    post.user.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.user.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      post.createdDate,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(post.status),
            ],
          ),
          const Divider(),
          Text(post.title),
          Text(post.content),
          buildPhotos(post.photos),
        ],
      ),
    );
  }
}

Widget buildPhotos(List<String> photos) {
  if (photos.isEmpty) {
    return Container();
  }
  var crossAxisCount = photos.length > 3 ? 3 : photos.length;
  return Container(
    padding: const EdgeInsets.all(8),
    child: GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      children: List.generate(
        photos.length,
        (index) {
          return Container(
            child: Image.network(
              photos[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    ),
  );
}
