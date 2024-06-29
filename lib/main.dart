import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        'second': (context) => const HomeScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/facebook-f-logo-white-background-21.jpg',
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text('Email or Phone',
                style: TextStyle(color: Colors.white54, fontSize: 21)),
            const Divider(
              height: 5,
              color: Colors.white54,
            ),
            const SizedBox(height: 20),
            const Text('Password',
                style: TextStyle(color: Colors.white54, fontSize: 21)),
            const Divider(
              height: 10,
              color: Colors.white54,
            ),
            const SizedBox(height: 20),
            const LoginButton(),
            const SizedBox(height: 150),
            const Center(
                child: Text(
              'Sign up for facebook',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            const SizedBox(
              height: 18,
            ),
            const Center(
                child: Text('Forget Password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ))),
          ],
        ),
      ),
    );
  }
}

