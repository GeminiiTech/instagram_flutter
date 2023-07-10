import 'package:flutter/material.dart';

// import '../model/story.dart';

class Story extends StatelessWidget {
  final String userStory;
  final String userImg;
  // final Story story;
  Story({super.key, required this.userStory, required this.userImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 43.0,
            child: CircleAvatar(
              backgroundImage: AssetImage(userImg),
              radius: 40.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            userStory,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
