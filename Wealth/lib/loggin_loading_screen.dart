import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wealth/Invest.dart';
import 'package:wealth/Learn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:wealth/globals.dart';
import 'package:http/http.dart' as http;

class LogginLoadingScreen extends StatefulWidget {
  const LogginLoadingScreen({super.key});

  @override
  State<LogginLoadingScreen> createState() => _LogginLoadingScreenState();
}

class _LogginLoadingScreenState extends State<LogginLoadingScreen> {

  var high_codes = ['143903', '120834', '106235', '120490', '150187', '118344'];
  var low_codes = ['120834', '118778', '145209', '145678', '145137', '146196'];
  var mid_codes = ['127042', '101065', '118989', '140228', '142108', '118665'];
  var high_percentage_current = [];
  var low_percentage_current = [];
  var mid_percentage_current = [];
  bool isDataFetched = false; // This flag tracks if data has been fetched

  double percentage_calculator(double prev_day_price, double current_day_price) {
    return ((current_day_price - prev_day_price) / prev_day_price) * 100;
  }

  fetch_funds_for_high_cards() async {
    const url = "https://api.mfapi.in/mf";
    for (int i = 0; i < 6; i++) {
      var uri = Uri.parse(url + '/'+ high_codes[i]);
      print('fetching funds from:'+ url);
      try {
        final response = await http.get(uri);
        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (mounted) {
            setState(() {
              high_percentage_current.add(percentage_calculator(
                  double.parse(json['data'][1]['nav']),
                  double.parse(json['data'][0]['nav'])));
            });
          }
        }
      } catch (e) {
        print('Exception: $e');
      }
    }
  }

  fetch_funds_for_low_cards() async {
    const url = "https://api.mfapi.in/mf";
    for (int i = 0; i < 6; i++) {
      var uri = Uri.parse(url + '/' + low_codes[i]);
      print('fetching funds from:'+ url);
      try {
        final response = await http.get(uri);
        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (mounted) {
            setState(() {
              low_percentage_current.add(percentage_calculator(
                  double.parse(json['data'][1]['nav']),
                  double.parse(json['data'][0]['nav'])));
            });
          }
        }
      } catch (e) {
        print('Exception: $e');
      }
    }
  }

  fetch_funds_for_mid_cards() async {
    const url = "https://api.mfapi.in/mf";
    for (int i = 0; i < 6; i++) {
      var uri = Uri.parse(url + '/' + mid_codes[i]);
      print('fetching funds from:'+ url);
      try {
        final response = await http.get(uri);
        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (mounted) {
            setState(() {
              mid_percentage_current.add(percentage_calculator(
                  double.parse(json['data'][1]['nav']),
                  double.parse(json['data'][0]['nav'])));
            });
          }
        }
      } catch (e) {
        print('Exception: $e');
      }
    }
  }

  Future<void> fetchAllData() async {
    await fetch_funds_for_high_cards();
    await fetch_funds_for_low_cards();
    await fetch_funds_for_mid_cards();
  }

  @override
  void initState() {
    super.initState();
    fetchAllData().then((_) {
      setState(() {
        high_percentage = high_percentage_current;
        low_percentage = low_percentage_current;
        mid_percentage = mid_percentage_current;
        isDataFetched = true;
        current_investment_price=100000;// Data fetching is complete
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isDataFetched
        ? Learn() // Show the Invest screen when data is fetched
        : Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: LottieBuilder.asset(
                    "lib/json/Animation - 1728820695948.json",height:300 ,width: 300,

                ),

              ),
            ),
          ),
          Center(
            child: Text(
              "Logging you in....",
              style: TextStyle(
                fontFamily: 'DegularDisplay',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
