import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wealth/globals.dart';
import 'package:wealth/main.dart';
import 'package:http/http.dart' as http;




class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageScreen(),
    );
  }
}

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  fetch_funds() async {
    const url = "https://api.mfapi.in/mf";
    final uri = Uri.parse(url);
    print("Fetching funds from: $url");//debug
    try {
      final response = await http.get(uri);
      print("Response status: ${response.statusCode}");//debug
      if (response.statusCode == 200) {
        print('Rate Limit Limit: ${response.headers['x-ratelimit-limit']}');//debug
        print('Rate Limit Remaining: ${response.headers['x-ratelimit-remaining']}');//debug
        print('Rate Limit Reset: ${response.headers['x-ratelimit-reset']}');//debug
        final json = jsonDecode(response.body);
        setState(() {
          mf_list = json;
          print("Fetched funds: ${mf_list.length}");//debug
        });
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetch_funds();

    // Initialize animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Define a Tween for scale animation (for the image)
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Define a Tween for slide animation (for the text)
    _slideAnimation = Tween<Offset>(begin: const Offset(-1.5, 0.0), end: const Offset(0.0, 0.0)).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation when the screen loads
    _controller.forward();

    // Delay for a few seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),  // Replace with your target screen
            (Route<dynamic> route) => false,  // This will remove all previous routes
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // This ensures the Column has minimal height
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Scale animation for the image
            ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage('lib/icons/wlogo1.png'), // Ensure the path is correct
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            // Removed the SizedBox and added padding directly to the text
            Padding(
              padding: const EdgeInsets.only(top: 1), // Minimal padding between image and text
              child: SlideTransition(
                position: _slideAnimation,
                child: const Text(
                  'Simulate, Strategise, Succeed',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

