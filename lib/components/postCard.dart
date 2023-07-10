import 'package:flutter/material.dart';
import 'package:instagram/model/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          //username
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('lib/images/img1.jpg'),
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    post.username,
                    style: TextStyle(),
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),

          SizedBox(
            height: 10.0,
          ),
          //shoe pic
          Image.asset(post.userPost),

          SizedBox(
            height: 10.0,
          ),

          Row(
            children: [
              Icon(Icons.favorite_outline),
              SizedBox(
                width: 15.0,
              ),
              Icon(Icons.chat_bubble_outline),
              SizedBox(
                width: 15.0,
              ),
              Icon(Icons.send_sharp),
              SizedBox(
                width: 230.0,
              ),
              Icon(
                Icons.bookmark_outline,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '369 likes',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                'etty_k',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('The earth has such a beautiful view from space'),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'View all 167 comments',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
