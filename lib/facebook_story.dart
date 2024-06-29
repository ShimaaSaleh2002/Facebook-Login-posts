import 'package:flutter/material.dart';

class FacebookStory extends StatelessWidget {
  const FacebookStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'assets/facebookStory.jpg',
            width: 70,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 7,
          left: 7,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child:const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        const Positioned(
          bottom: 7,
          right: 7,
          child: Text(
            'Owner',
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
