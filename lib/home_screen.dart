import 'package:assignment_2_facebook/facebook_story.dart';
import 'package:assignment_2_facebook/post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Center(
              child: Text(
            'Home',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
        body: const Padding(
          padding: EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FacebookStory(),
                    FacebookStory(),
                    FacebookStory(),
                    FacebookStory(),
                    FacebookStory(),
                  ],
                ),
              ),
               SizedBox(
                height: 8.0,
              ),
               Post(),
               Divider(
                height: 10.0,
              ),
               SizedBox(
                height: 10.0,
              ),
               Post()
            ],
          ),
        ));
  }
}
