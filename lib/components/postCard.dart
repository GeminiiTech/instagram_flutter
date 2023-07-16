import 'package:flutter/material.dart';
import 'package:instagram/model/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final void Function()? onPressed;
  final bool? isLiked;
  PostCard({super.key, required this.post, required this.onPressed,required this.isLiked});

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
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('lib/images/img1.jpg'),
                    backgroundColor: Colors.red,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    post.username,
                    style: TextStyle(),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          ),

          const SizedBox(
            height: 10.0,
          ),
          //shoe pic
          Image.asset(post.userPost),

          const SizedBox(
            height: 10.0,
          ),

          Row(
            children: [
              IconButton(
                  onPressed: onPressed,
                  icon:Icon(

                  isLiked! ? Icons.favorite_border:Icons.favorite
                  )
                  
                  ),
              const Icon(Icons.chat_bubble_outline),
              const SizedBox(
                width: 15.0,
              ),
              const Icon(Icons.send_sharp),
              const SizedBox(
                width: 200.0,
              ),
               IconButton(
                onPressed: onPressed,
                icon: Icon(
                isLiked! ?  Icons.bookmark_outline: Icons.bookmark
                ),
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '369 likes',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Row(
            children: [
              Text(
                'etty_k',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('The earth has such a beautiful view from space'),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text(
                'View all 167 comments',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
