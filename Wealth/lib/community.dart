import 'package:flutter/material.dart';
import 'quizzes.dart';
import 'learnhomepage.dart';

// Sample community data
class Community {
  final String name;
  final String description;
  final String imageUrl;

  Community({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

List<Community> communities = [
  Community(
    name: 'Investing Squad',
    description: 'Join Investing Squad today! 🚀💸',
    imageUrl: 'https://i.ibb.co/gt9RFBC/is.jpg',
  ),
  Community(
    name: 'Compounding Club',
    description: 'Compounding bros FTW!',
    imageUrl: 'https://i.ibb.co/Jck5MYB/cc.jpg',
  ),
  Community(
    name: 'MF Mavericks',
    description: 'Mavericks of the Mutual Fund Game',
    imageUrl: 'https://i.ibb.co/D92tFrP/mf.jpg',
  ),
];

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('lib/assets/w#logo 2.png'),
          height: 150,
          width: 150,
          alignment: Alignment.centerLeft,
        ),
        backgroundColor: Colors.green,
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('lib/assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Tab-like Row for Navigation
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WealthHomePage()
                        ),
                      );
                    },








                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Chapters',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizzesPage()
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Quizzes',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Community',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Communities',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: communities.length,
                      itemBuilder: (context, index) {
                        final community = communities[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(community.imageUrl),
                              ),
                              title: Text(
                                community.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(community.description),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CommunityChatPage(community: community),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Chat Page
class CommunityChatPage extends StatelessWidget {
  final Community community;

  CommunityChatPage({required this.community});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.green,
            width: double.infinity,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(community.imageUrl),
                  radius: 30,
                ),
                SizedBox(height: 8),
                Text(
                  community.name,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                Image.network(
                  'https://media.istockphoto.com/id/1189860501/photo/traveler-with-a-backpack-standing-on-a-mountain-peak-above-clouds-3d-render-illustration.jpg?s=612x612&w=0&k=20&c=2uVFg0l7-fNqKFWXyawYlcTBxWLRzQ1blhev6lhbaY4=',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                ChatBubble(
                  message: "Climb the Investment Mountain with Mutual Funds",
                  time: "9:00 AM",
                ),
                ChatBubble(
                  message:
                  "Are you ready to take your investment journey to new heights? Mutual funds offer a fantastic way to diversify your portfolio and potentially achieve long-term financial goals.",
                  time: "9:00 AM",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Chat Bubble Widget
class ChatBubble extends StatelessWidget {
  final String message;
  final String time;

  ChatBubble({
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message),
            SizedBox(height: 4),
            Text(
              time,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
