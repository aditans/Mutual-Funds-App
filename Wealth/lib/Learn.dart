
import 'package:wealth/Invest.dart';
import 'package:wealth/Profile.dart';

import 'package:flutter/material.dart';
import 'package:wealth/globals.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wealth/learnhomepage.dart';
import 'package:wealth/user_profile.dart';
class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:OurNavigationBar(),



    );
}
}
class OurNavigationBar extends StatefulWidget {
  const OurNavigationBar({super.key});

  @override
  State<OurNavigationBar> createState() => _OurNavigationBarState();
}


class _OurNavigationBarState extends State<OurNavigationBar> {
  int current_index =0;
  String str="Learn";

  void travel(int val)
  {
    setState(() {
      current_index=val;
    });
    switch(current_index)
    {
      case 0:

        break;

      case 1:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Invest()));
        break;

      case 2:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Profile()));
        break;
    }


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left: Logo Image
            Image.asset(
              'lib/icons/wealth.png',
              height: 50,
            ),
            IconButton(
              icon: Icon(Icons.account_circle, size: 30),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));

              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/icons/background.png'),
            fit:BoxFit.cover ,),
        ),
        child: ChaptersPage(),
      ),
      bottomNavigationBar: FractionallySizedBox(
        heightFactor: 0.10,
        child: BottomNavigationBar(
          backgroundColor: Colors.green[100],
          selectedItemColor: Colors.green,
          selectedIconTheme: const IconThemeData(
            size: 35,
          ),
          selectedFontSize: 20,
          currentIndex: current_index,
          onTap: travel,
          showUnselectedLabels: false,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.graduationCap),
              label:"Learn",

            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.handHoldingDollar),
              label:"Invest",

            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.briefcase),
              label:"Portfolio",

            ),
          ],


        ),
      ),


    );
  }
}

class Learn_body extends StatefulWidget {
  const Learn_body({super.key});

  @override
  State<Learn_body> createState() => _Learn_bodyState();
}

class _Learn_bodyState extends State<Learn_body> {
  final user=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return  Center(

    );
  }
}



