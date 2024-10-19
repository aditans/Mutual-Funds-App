import 'package:flutter/cupertino.dart';
import 'package:wealth/Invest.dart';
import 'package:firebase_auth/firebase_auth.dart';
int investment_count=0;
var current_investment_price;
int current_value_price=0;
int pnl=0;
final user=FirebaseAuth.instance.currentUser;
var high_percentage=[];
var low_percentage=[];
var mid_percentage=[];
UserCredential? userCredential;



List<dynamic> mf_list=[];

// for now this




// afterwards gonna implement using firebase to store user current investment


List<Carditem> investment_items=[

];
List<Carditem> newinvest_items=[

];