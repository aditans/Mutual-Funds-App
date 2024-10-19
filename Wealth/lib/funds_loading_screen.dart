import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wealth/FundInfoPage.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class FundsLoadingScreen extends StatefulWidget {
  FundsLoadingScreen({required this.Scheme_no, super.key});
  final String Scheme_no;

  @override
  State<FundsLoadingScreen> createState() => _FundsLoadingScreenState();
}

class _FundsLoadingScreenState extends State<FundsLoadingScreen> {
  List<dynamic> current_mf_data = [];
  Map<String, dynamic> current_mf_meta = {};
  bool hasError = false; // Track if an error occurred during the fetch.
  int retryCount = 0; // Retry counter to avoid infinite retries.

  Future<void> fetchFundDetails() async {
    var url = "https://api.mfapi.in/mf/${widget.Scheme_no}";
    final uri = Uri.parse(url);

    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        setState(() {
          current_mf_data = json['data'];
          current_mf_meta = json['meta'];
          hasError = false; // No error occurred.
        });
      } else {
        print('Error: ${response.statusCode}');
        handleFetchError();
      }
    } catch (e) {
      print('Exception: $e');
      handleFetchError();
    }
  }

  void handleFetchError() {
    setState(() {
      hasError = true; // Set error flag to true.
      retryCount += 1;
    });

    // Show a SnackBar for the error
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Failed to fetch data. Retrying...'),
        backgroundColor: Colors.red[300],
        duration: const Duration(seconds: 3), // Adjust the display time of the snackbar
      ),
    );

    // Retry fetching the data after showing the SnackBar
    Future.delayed(const Duration(seconds: 3), () {
      if (retryCount < 3) { // Limit retries to 3 attempts
        fetchFundDetails();
      } else {
        // If retries fail, show a final message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Failed after multiple attempts. Please try again later.'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    fetchFundDetails();
  }

  @override
  Widget build(BuildContext context) {
    // Show loading animation until data is fetched successfully
    if (current_mf_data.isEmpty && !hasError) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                "lib/json/Animation - 1729003111175.json",
                frameRate: FrameRate(120),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Fetching details for you....",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Check if an error occurred, and if so, retry fetching the data.
    if (hasError && retryCount >= 3) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Failed to load data after multiple attempts.",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Retry fetching the data.
                  setState(() {
                    hasError = false;
                    retryCount = 0; // Reset retry counter
                  });
                  fetchFundDetails();
                },
                child: const Text("Retry Manually"),
              ),
            ],
          ),
        ),
      );
    }

    // Show the FundInfoPage once data is fetched successfully
    return Fundinfopage(
      current_mf_data: current_mf_data,
      current_mf_meta: current_mf_meta,
    );
  }
}
