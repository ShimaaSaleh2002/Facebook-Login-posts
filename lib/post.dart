import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                  ),
                  child: const Icon(Icons.person, color: Colors.white,)),
              const SizedBox(width: 10,),
              const Column(
                children: [Text('Owner',
                  style: TextStyle(fontWeight: FontWeight.bold),)
                  , Row(
                    children: [
                      Text('3h', style: TextStyle(fontSize: 13),),
                      SizedBox(width: 3.0,),
                      Icon(Icons.public, size: 15,),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 12.0,),
          const Text('My post',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          const SizedBox(height: 23,),
          Row(
            children: [
              const Text('100'),
              const SizedBox(width: 10,),
              Image.asset('assets/like.jpg', width: 30, height: 25,),
              const SizedBox(width: 220,),
              const Text('100 Comments')
            ],
          )
          ,const  SizedBox(height: 15,),
          const Divider(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Row(
                children: [
                  Image.asset('assets/singleLike.jpg', width: 18, height: 18,),
                  const SizedBox(width: 5.0,),
                  const Text('Like'),
                ],
              ),),
              TextButton(onPressed: () {}, child: Row(
                children: [
                  Image.asset('assets/comment.jpg', width: 18, height: 18,),
                  const SizedBox(width: 5.0,),
                  const Text('Comment'),
                ],
              ),),
              TextButton(onPressed: () {}, child: Row(
                children: [
                  Image.asset('assets/share.png', width: 18, height: 18,),
                  const SizedBox(width: 5.0,),
                  const Text('Share'),
                ],
              ),)
            ],)
        ],
      ),
    );
  }


}