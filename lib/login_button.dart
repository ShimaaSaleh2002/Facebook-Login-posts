import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'second');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          backgroundColor: Colors.blueGrey, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        child: const Center(
          child: Text(
            'LOG IN',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ));
  }
}
