import 'package:flutter/material.dart';
import 'package:wealth/Invest.dart';
import 'package:wealth/globals.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Fundinfopage extends StatefulWidget {
  Fundinfopage({required this.current_mf_data,required this.current_mf_meta,super.key});
  List <dynamic> current_mf_data = [];
  Map <String, dynamic> current_mf_meta = {};

  @override
  State<Fundinfopage> createState() => _FundinfopageState();
}

class _FundinfopageState extends State<Fundinfopage> {
  Widget perc(String percentage)
  {
    double parsedPercentage = double.parse(percentage.replaceAll('%', ''));
    percentage=parsedPercentage.toString();
    if(double.parse(percentage)>0)
      return Padding(
        padding: const EdgeInsets.fromLTRB(8,3,3,8),
        child: Container(

          decoration: BoxDecoration(color: Colors.green[300],borderRadius: BorderRadius.circular(12),),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.arrow_drop_up,color: Colors.white,size: 30,),
                Text(
                  percentage+'%',
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily:'DegularDisplay' ,

                  ),
                ),
              ],
            ),
          ),
        ),
      );
    else
      return Padding(
        padding: const EdgeInsets.fromLTRB(8,3,3,8),
        child: Container(
          decoration: BoxDecoration(color: Colors.red[300],borderRadius: BorderRadius.circular(12),),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.arrow_drop_down,color: Colors.white,size: 30,),
                Text(
                  percentage+'%',
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily:'DegularDisplay' ,

                  ),
                ),
              ],
            ),
          ),
        ),
      );

  }

  double? percentage;
  double percentage_calculator(double prev_day_price , double current_day_price)
  {
    //print(widget.current_mf_meta['scheme_code']);
    return ((current_day_price - prev_day_price) / prev_day_price) * 100;

  }
  // Function to show the bottom sheet
  // Function to show the bottom sheet
  void _showInvestmentBottomSheet(BuildContext context, String investmentType) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return InvestmentPopup(
          investmentType: investmentType,
          current_mf_meta: widget.current_mf_meta,
          current_mf_data: widget.current_mf_data,
          onInvest: (double amount) {
            setState(() {
              //globals.funds -= amount; // Deduct the investment amount from the balance
            });
          },
        );
      },
    );
  }

  String _getFormattedDate(String date) {
    // Parse the date string with the correct format
    DateTime parsedDate = DateFormat('dd-MM-yyyy').parse(date);
    return DateFormat('MM/yy').format(parsedDate);  // Format to MM/YY for display
  }
  double _findMaxNAV() {
    double maxNAV = 0.0;
    for (var mf in widget.current_mf_data) {
      double nav = double.parse(mf['nav']);
      if (nav > maxNAV) {
        maxNAV = nav;
      }
    }
    return maxNAV;
  }
  String _getDateLabel(int index) {
    // Assuming current_mf_data[index]['date'] holds the date as a string
    String date = widget.current_mf_data[widget.current_mf_data.length-index-1]['date'];
    return date;  // You can format the date if necessary
  }
  List<FlSpot> _buildSpotsFromData() {
    List<FlSpot> spots = [];
    for (int i = 0; i < widget.current_mf_data.length; i++) {
      double nav = double.parse(widget.current_mf_data[i]['nav']);
      // Flip Y-values for vertical flip
      spots.add(FlSpot(i.toDouble(), nav));
    }
    return spots.reversed.toList();
  }
  @override
  void initState() {
    super.initState();

    if (widget.current_mf_data.length > 1) {
      double previousNAV = double.tryParse(widget.current_mf_data[1]['nav']) ?? 0.0;
      double currentNAV = double.tryParse(widget.current_mf_data[0]['nav']) ?? 0.0;
      percentage = percentage_calculator(previousNAV, currentNAV);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Image(image: AssetImage('lib/icons/wealth.png'),
          height: 150,
          width:150 ,
          alignment: Alignment.centerLeft,),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/icons/background.png'),
          fit:BoxFit.cover ,),),
          child: ListView(
            scrollDirection: Axis.vertical,

            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      height:75,
                      width:75,

                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color:Colors.grey,width: 3,),

                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        //child:Image.network(widget.image,),


                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.current_mf_meta['scheme_name'],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Category : '+widget.current_mf_meta['scheme_category']),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('AMC : '+widget.current_mf_meta['fund_house']),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: perc(percentage!.toStringAsFixed(2))

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(widget.current_mf_data[0]['date'],style: TextStyle(fontSize: 12,),),
                      decoration: BoxDecoration(color: Colors.grey[200],),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 45,
                        width: 110,

                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('NAV : '+double.parse(widget.current_mf_data[0]['nav']).toStringAsFixed(2)),
                        )),
                        decoration: BoxDecoration(color:Colors.green[200],borderRadius: BorderRadius.circular(10.0), ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(widget.current_mf_data[0]['date'],style: TextStyle(fontSize: 12,),),
                        decoration: BoxDecoration(color: Colors.grey[200],),
                      ),
                    )
                  ],
                )
              ),

              //fl graph
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  width: double.infinity,
                  height: 700,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: _buildSpotsFromData(),
                            isCurved: true,
                            color: Colors.blue,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        titlesData: FlTitlesData(

                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 30,
                              getTitlesWidget: (value, meta) {
                                int reversedIndex = widget.current_mf_data.length - 1 - value.toInt();

                                if (reversedIndex >= 0 && reversedIndex < widget.current_mf_data.length) {
                                  String formattedDate = _getFormattedDate(widget.current_mf_data[value.toInt()]['date']);
                                  return Text(formattedDate, style: TextStyle(fontSize: 9));  // MM/YY format
                                }
                                return Container();
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) {
                                return Text(value.toStringAsFixed(2), style: TextStyle(fontSize: 10));  // Show NAV directly
                              },
                            ),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),  // Hide top titles
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),  // Hide right titles
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        minX: 0,
                        maxX: widget.current_mf_data.length - 1,
                        minY: 0,
                        maxY: _findMaxNAV(),  // Use max NAV for scaling the Y-axis
                      ),
                    ),
                  ),
                ),
              ),
              //fl graph
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(onPressed: () {
                        _showInvestmentBottomSheet(context, 'Lump-Sum');
                      },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green[700],
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                        ),
                          child: const Text('one-time'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(onPressed: () {
                        _showInvestmentBottomSheet(context, 'SIP');
                      },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green[700],
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                        ),

                          child: const Text('Start SIP'),
                      ),
                      ),



                  ],

                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}


class InvestmentPopup extends StatefulWidget {
  final String investmentType;
  final Function(double) onInvest;
  final Map<String, dynamic> current_mf_meta;  // Add this field
  final List<dynamic> current_mf_data;  // Add this field

  const InvestmentPopup({
    Key? key,
    required this.investmentType,
    required this.onInvest,
    required this.current_mf_meta,  // Initialize it in the constructor
    required this.current_mf_data,  // Initialize it in the constructor
  }) : super(key: key);

  @override
  State<InvestmentPopup> createState() => _InvestmentPopupState();
}


class _InvestmentPopupState extends State<InvestmentPopup> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20.0,
        right: 20.0,
        top: 20.0,
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.investmentType == 'SIP'
                    ? 'Invest in Mutual Fund - SIP'
                    : 'Invest in Mutual Fund - Lump-Sum',
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              widget.investmentType == 'SIP'
                  ? Text('Amount/Month\nMin SIP = \u{20B9}500',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              )
                  : Text('One-Time Amount\nMin Lump-Sum = \u{20B9}5000',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Investment Amount',
                  hintText: 'Enter amount in INR',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: _dateController,
                readOnly: true,
                onTap: _pickDate,
                decoration: InputDecoration(
                  labelText: 'Investment Start Date',
                  hintText: 'Select Start Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: const Icon(Icons.calendar_today, color: Colors.grey),
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _validateAndBuyMutualFund,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Buy'),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),

        ],
      ),
    );

  }

  Future<void> _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat.yMMMd().format(pickedDate);
      });
    }
  }

  Future<void> _addInvestmentToFirestore(String investmentType, double amount, DateTime startDate) async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not signed in')),
      );
      return;
    }

    DocumentReference userDocRef = FirebaseFirestore.instance.collection('Users').doc(currentUser.email);
    //var userData = userDocRef.path as Map<String, dynamic>;    // Create an investment object to add to the array
    Map<String, dynamic> investmentDetails = {
      'scheme_name': widget.current_mf_meta['scheme_name'],
      'scheme_code': widget.current_mf_meta['scheme_code'],
      'amount': amount,
      'start_date': startDate,
      'status':'inactive'
    };

    if (investmentType == 'SIP') {



      // Add to the sip_holdings array
      await userDocRef.update({
        'sip_holdings': FieldValue.arrayUnion([investmentDetails])
      });
      await userDocRef.update({'initial_funds': FieldValue.increment(-1*amount)});
      await userDocRef.update({'investments': FieldValue.increment(amount)});
    } else {
      // Add to the one_time_holdings array
      await userDocRef.update({
        'one_time_holdings': FieldValue.arrayUnion([investmentDetails])
      });
      await userDocRef.update({'initial_funds': FieldValue.increment(-1*amount)});
      await userDocRef.update({'investments': FieldValue.increment(amount)});
    }

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Investment of ₹$amount in ${widget.current_mf_meta['scheme_name']} added to $investmentType holdings.')),
    );
  }





  void _buyMutualFund() async {

// Inside _buyMutualFund or _addInvestmentToFirestore
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // Use currentUser.email for Firestore document reference
      DocumentReference userDocRef = FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUser.email);

      // Continue with adding investments...
    } else {
      // Handle the case when the user is not signed in
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not signed in')),
      );
    }

    String amount = _amountController.text;
    if (amount.isEmpty || _selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the details')),
      );
      return;
    }

    double investmentAmount = double.parse(amount);

    // Call _addInvestmentToFirestore with the required parameters
    try {
      await _addInvestmentToFirestore(widget.investmentType, investmentAmount, _selectedDate!);

      // Show success message and close the bottom sheet after successful investment
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Investment of ₹$amount scheduled on ${DateFormat.yMMMd().format(_selectedDate!)}')),
      );
      Navigator.pop(context);
    } catch (e) {
      // Show an error message if something goes wrong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save investment: $e')),
      );
    }
  }




  Future<void> _validateAndBuyMutualFund() async {
    // Parse the input amount from the TextField
    User? user = FirebaseAuth.instance.currentUser;
    double enteredAmount = double.tryParse(_amountController.text) ?? 0;
    DocumentReference userDocRef = FirebaseFirestore.instance
        .collection('Users')
        .doc(user?.email);
    //var userData = userDocRef.path as Map<String, dynamic>;
    var data;
    await userDocRef.get().then(
            (DocumentSnapshot doc) {
          data = doc.data() as Map<String, dynamic>;

        });


    // Check for SIP condition
    if (widget.investmentType == 'SIP') {
      if (enteredAmount >= 500 && enteredAmount <= data['initial_funds'] ) {
        _buyMutualFund(); // Proceed with the purchase
      }
      else if (enteredAmount > data['initial_funds']){
        // Show an error if amount is less than ₹500
        _showErrorDialog('Not Enough Funds.');
      }

      else {
        // Show an error if amount is less than ₹500
        _showErrorDialog('Minimum SIP amount is ₹500.');
      }
    }
    // Check for One-Time Lump Sum condition
    else if (widget.investmentType == 'Lump-Sum') {
      if (enteredAmount >= 5000 && enteredAmount <= data['initial_funds']) {
        _buyMutualFund(); // Proceed with the purchase
      }
      else if (enteredAmount > data['initial_funds']){
        // Show an error if amount is less than ₹500
        _showErrorDialog('Not Enough Funds.');
      }

      else {
        // Show an error if amount is less than ₹5000
        _showErrorDialog('Minimum Lump-Sum amount is ₹5000.');
      }
    }
  }

  // Function to show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Amount'),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


