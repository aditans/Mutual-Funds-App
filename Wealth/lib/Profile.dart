import 'package:wealth/globals.dart';
import 'package:wealth/Invest.dart';
import 'package:wealth/Learn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth/user_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OurNavigationBar(),
    );
  }
}

class OurNavigationBar extends StatefulWidget {
  const OurNavigationBar({super.key});

  @override
  State<OurNavigationBar> createState() => _OurNavigationBarState();
}

class _OurNavigationBarState extends State<OurNavigationBar> {
  int current_index = 2;
  String str = "Profile";

  void travel(int val) {
    setState(() {
      current_index = val;
    });
    switch (current_index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Learn()));
        break;

      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Invest()));
        break;

      case 2:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Profile_body(),
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
              label: "Learn",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.handHoldingDollar),
              label: "Invest",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.briefcase),
              label: "Portfolio",
            ),
          ],
        ),
      ),
    );
  }
}

class Profile_body extends StatefulWidget {
  const Profile_body({super.key});

  @override
  State<Profile_body> createState() => _Profile_bodyState();
}

class _Profile_bodyState extends State<Profile_body> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("PORTFOLIO", 35),
            _buildInvestmentInfo(),
            _buildSectionTitle("HOLDINGS", 35),
            _buildHoldingsSection("SIP", 'sip_holdings'),
            _buildHoldingsSection("ONE-TIME", 'one_time_holdings'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        letterSpacing: 10,
        fontFamily: 'DegularDisplay',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.green[800],
      ),
    );
  }


  Widget _buildInvestmentInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 374,
        width: 374,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 3),
          color: Colors.grey[300],
        ),
        child: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('Users')
              .doc(user?.email)
              .snapshots(),
          builder: (context, snapshot) {
            // Show loading indicator while waiting for data
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // Handle error
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            // Check if the document exists
            if (!snapshot.hasData || !snapshot.data!.exists) {
              return const Center(
                child: Text('No data available.'),
              );
            }

            // Data is available, proceed to render it
            var userData = snapshot.data!.data() as Map<String, dynamic>;
            var funds = userData['initial_funds'] ?? 'Not Available';
            var invest = userData['investments'] ?? 'Not Available';
            var curVal = userData['current_value'] ?? 'Not Available';
            var pnl = userData['p_and_l'] ?? 'Not Available';

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Text(
                    'Funds Left',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      letterSpacing: 5,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '₹$funds',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 33,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Investments',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      letterSpacing: 5,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '₹$invest',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 33,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Current Value',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      letterSpacing: 5,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '₹$curVal',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 33,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'P & L',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      letterSpacing: 5,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '₹$pnl',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 33,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }


  Widget _buildHoldingsSection(String title, String holdingsType) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(title, 25),
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Users')
                .doc(user?.email)
                .snapshots(),
            builder: (context, snapshot) {
              // Show loading indicator
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              // Handle error
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              // Check if document exists
              if (!snapshot.hasData || !snapshot.data!.exists) {
                return const Center(child: Text('No data found.'));
              }

              var userData = snapshot.data!.data() as Map<String, dynamic>;
              List<dynamic> holdings = userData[holdingsType] ?? [];

              if (holdings.isEmpty) {
                return const Center(child: Text('No holdings found.'));
              }

              return _buildHoldingsList(holdings);
            },
          ),
        ],
      ),
    );
  }


  Widget _buildHoldingsList(List<dynamic> holdings) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: holdings.length,
      itemBuilder: (context, index) {
        var holding = holdings[index];

        // Check if scheme_no is null and handle it
        var schemeNo = holding['scheme_code'] ?? 'Not Available';

        // Convert Firestore Timestamp to DateTime if it exists
        var startDate = holding['start_date'] is Timestamp
            ? (holding['start_date'] as Timestamp).toDate()
            : null;

        var sipAmount = holding['amount'] ?? 'Not Available';
        var sipname = holding['scheme_name'] ?? 'Not Available';
        var activity = holding['status'] ?? 'Not Available';

        return Card(
          margin: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  " $sipname",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.green,letterSpacing: 3,fontFamily: 'DegularDisplay',fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Amount: ₹$sipAmount",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(letterSpacing: 3,fontFamily: 'DegularDisplay',fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 8),
                if (startDate != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Start Date: ",overflow: TextOverflow.ellipsis,style: TextStyle(letterSpacing: 3,fontFamily: 'DegularDisplay',fontSize: 16, fontWeight: FontWeight.bold),),
                         Text(" ${startDate}.",overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.blue,letterSpacing: 2,fontFamily: 'DegularDisplay',fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("status : ",style: TextStyle(letterSpacing: 3,fontFamily: 'DegularDisplay',fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("$activity",style: TextStyle(color: Colors.red,letterSpacing: 3,fontFamily: 'DegularDisplay',fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }

}



