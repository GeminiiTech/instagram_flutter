import 'package:flutter/material.dart';
// import 'package:instagram/model/story.dart';
import 'package:instagram/components/ig_story.dart';

import '../components/postCard.dart';
import '../model/post.dart';

// import '../components/ig_story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Story(userStory: "Your Story", userImg: "lib/images/img1.jpg"),
                Story(userStory: "teeboi", userImg: "lib/images/batman.jpg"),
                Story(userStory: "etty_ke", userImg: "lib/images/ben.jpg"),
                Story(userStory: "messi.l", userImg: "lib/images/space.jpg"),
              ],
            ),
            SizedBox(
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
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
