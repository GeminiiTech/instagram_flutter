import 'package:flutter/material.dart';
// import 'package:instagram/model/story.dart';
import 'package:instagram/components/ig_story.dart';

import '../components/postCard.dart';
import '../model/post.dart';

// import '../components/ig_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLiked = true;
  void toogleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Expanded(
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //     return Story(
            //         userStory: "Your Story", userImg: "lib/images/img1.jpg");
            //   }),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Story(userStory: "Your Story", userImg: "lib/images/img1.jpg"),
                Story(userStory: "teeboi", userImg: "lib/images/batman.jpg"),
                Story(userStory: "etty_ke", userImg: "lib/images/ben.jpg"),
                Story(userStory: "messi.l", userImg: "lib/images/space.jpg"),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                Post post =
                    Post(username: 'etty_k', userPost: "lib/images/space.jpg");
                return PostCard(
                  post: post,
                  onPressed: () => toogleLike(),
                  isLiked: _isLiked,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
