
import 'dart:convert';
import 'dart:ffi';

import 'package:wealth/Learn.dart';
import 'package:wealth/Profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wealth/FundInfoPage.dart';
import 'package:wealth/funds_loading_screen.dart';
import 'package:wealth/globals.dart';
import 'package:wealth/user_profile.dart';
class Invest extends StatefulWidget {
  const Invest({super.key});

  @override
  State<Invest> createState() => _InvestState();
}


class _InvestState extends State<Invest> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OurNavigationBarInvest(),



    );
  }
}
class OurNavigationBarInvest extends StatefulWidget {
  const OurNavigationBarInvest({super.key});

  @override
  State<OurNavigationBarInvest> createState() => _OurNavigationBarStateInvest();
}


class _OurNavigationBarStateInvest extends State<OurNavigationBarInvest> {
  int current_index =1;
  String str="Invest";

  void travel(int val)
  {
    setState(() {
      current_index=val;
    });
    switch(current_index)
    {
      case 0:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Learn()));
        break;

      case 1:

        break;

      case 2:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Profile()));
        break;
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
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
          child: const Invest_body(),
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
class Invest_body extends StatefulWidget {
  const Invest_body({super.key});

  @override
  State<Invest_body> createState() => _Invest_bodyState();
}
class Carditem
{
  String fund_name;
  String percentage;
  String image;
  String cap;
  Carditem({
    required this.fund_name,
    required this.percentage,
    required this.image,
    required this.cap,
});


}


class _Invest_bodyState extends State<Invest_body> {
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

  Widget cards( {required Carditem items,})
  {
    return GestureDetector(
      onTap: ()=>{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FundsLoadingScreen(Scheme_no: items.cap))),
          },

      child: Container(
        height: 90,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(image: AssetImage('lib/icons/card_bg2.png'),),

        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3,3,3,8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3,3,3,8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3,3,8,8),
                      child: Container(
                        height:33,
                        width:33,
                        clipBehavior: Clip.hardEdge,
                        decoration:const BoxDecoration(
                          shape: BoxShape.circle,


                        ),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child:Image.network(items.image,),
                        ),
                      ),
                    ),
                    perc(items.percentage),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8,8,5,3),
                child: Text(
                  items.fund_name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily:'DegularDisplay' ,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }



  List<Carditem> high_items=[
    Carditem(
        fund_name: 'ICICI Prudential BHARAT 22 FOF Direct Growth',
        percentage: '${high_percentage[0].toStringAsFixed(2)}',
        image: 'https://5.imimg.com/data5/SELLER/Default/2024/4/411397427/TO/VL/MI/61083566/icici-prudential-mutual-fund.png',
        cap: '143903',
    ),
    Carditem(
        fund_name: 'Quant Focused Fund Direct Growth',
        percentage: '${high_percentage[1].toStringAsFixed(2)}',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJtcnluYF1Uk58DTxQn1p_6G96z4zHbU2iug&s',
        cap: '120834',
    ),
    Carditem(
        fund_name: 'Nippon India Large Cap Fund',
        percentage: '%${high_percentage[2].toStringAsFixed(2)}',
        image: 'https://static.paytmmoney.com/amc-logo/RELMF.png',
        cap: '106235',
    ),
    Carditem(
        fund_name: 'JM Large Cap Fund Direct Plan Growth',
        percentage: '${high_percentage[3].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/jm_groww.png',
        cap: '120490',
    ),
    Carditem(
        fund_name: 'Baroda BNP Paribas Large Cap Fund Direct Growth',
        percentage: '${high_percentage[4].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/baroda_groww.png',
        cap: '150187',
    ),
    Carditem(
        fund_name: 'IDBI India Top 100 Equity Fund Direct Growth',
        percentage: '${high_percentage[5].toStringAsFixed(2)}',
        image: 'https://static.paytmmoney.com/amc-logo/IDBMF.png',
        cap: '118344',
    ),



  ];
  List<Carditem> mid_items=[
    Carditem(
        fund_name: 'Motilal Oswal Mutual Fund',
        percentage: '${mid_percentage[0].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/motilal_groww.png',
        cap: '127042',
    ),
    Carditem(
        fund_name: 'Quant Mid Cap Fund Direct Growth',
        percentage: '${mid_percentage[1].toStringAsFixed(2)}',
        image: 'https://my.fisdom.com/static/img/amc-logo/low-res/quant.png',
        cap: '101065',

    ),
    Carditem(
        fund_name: 'HDFC Mid Cap Opportunities Direct Plan Growth',
        percentage: '${mid_percentage[2].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/hdfc_groww.png',
        cap: '118989',
    ),
    Carditem(
        fund_name: 'Edelweiss Mid Cap Direct Plan Growth',
        percentage: '${mid_percentage[3].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/jm_groww.png',
        cap: '140228',
    ),
    Carditem(
        fund_name: 'Mahindra Manulife Mid Cap Fund Direct Growth',
        percentage: '${mid_percentage[4].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/mahindra_groww.png',
        cap: '142108',
    ),
    Carditem(
        fund_name: 'Nippon India Growth Fund Direct Growth',
        percentage: '${mid_percentage[5].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/reliance_groww.png',
        cap: '118665',
    ),

  ];
  List<Carditem> low_items=[
    Carditem(
        fund_name: 'Quant Focused Fund Direct Growth',
        percentage: '${low_percentage[0].toStringAsFixed(2)}',
        image: 'https://my.fisdom.com/static/img/amc-logo/low-res/quant.png',
        cap: '120834',
    ),
    Carditem(
        fund_name: 'Nippon India Small Cap Fund Direct Growth',
        percentage: '${low_percentage[1].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/reliance_groww.png',
        cap: '118778',
    ),
    Carditem(
        fund_name: 'Tata Small Cap Fund Direct Growth',
        percentage: '${low_percentage[2].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/tata_groww.png',
        cap: '145209',
    ),
    Carditem(
        fund_name: 'Bank of India Small Cap Fund Direct Growth',
        percentage: '${low_percentage[3].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/boi_groww.png',
        cap: '145678',
    ),
    Carditem(
        fund_name: 'Invesco India Smallcap Fund Direct Growth',
        percentage: '${low_percentage[4].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/invesco_groww.png',
        cap: '145137',
    ),
    Carditem(
        fund_name: 'Edelweiss Small Cap Fund Direct Growth',
        percentage: '${low_percentage[5].toStringAsFixed(2)}',
        image: 'https://assets-netstorage.groww.in/mf-assets/logos/edelweiss_groww.png',
        cap: '146196',
    ),

  ];
  List<dynamic> found_mf_list=[
  ];
  final mutualFundsController=TextEditingController();
  Widget listorcards ()
  {
    if(mutualFundsController.text.isEmpty) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("LARGE CAP",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 6,
                fontFamily:'DegularDisplay' ,
                fontWeight:FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green[800],
              )
          ),
        ),

        //high cap cards

        Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,8),
          child: SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount:6 ,
              separatorBuilder: (context,index)=> const SizedBox(width: 15,),
              itemBuilder: (context,index)=> cards(items:high_items[index]),
            ),
          ),
        ),

        //mid cap text

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("MID CAP",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 6,
                fontFamily:'DegularDisplay' ,
                fontWeight:FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green[800],
              )
          ),
        ),

        //mid cap cards

        Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,8),
          child: SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount:6 ,
              separatorBuilder: (context,index)=> const SizedBox(width: 15,),
              itemBuilder: (context,index)=> cards(items:mid_items[index]),
            ),
          ),
        ),

        //low cap text

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("SMALL CAP",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 6,
                fontFamily:'DegularDisplay' ,
                fontWeight:FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green[800],
              )
          ),
        ),

        //low cap cards

        Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,8),
          child: SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount:6 ,
              separatorBuilder: (context,index)=> const SizedBox(width: 15,),
              itemBuilder: (context,index)=> cards(items:low_items[index]),
            ),
          ),
        ),

        // sip


      ],
    );
    } else {
      return SizedBox(
        height: MediaQuery.of(context).size.height,
        child:ListView.builder(
        itemCount: found_mf_list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: OutlinedButton(
              style: ButtonStyle(),
                child: Text(found_mf_list[index]['schemeName'],overflow: TextOverflow.ellipsis,),
              onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>FundsLoadingScreen(Scheme_no: found_mf_list[index]['schemeCode'].toString())));},
            ),
          );
        },
      ),
      );
    }
  }

  void filterin(String value) async{
    List<dynamic> results = [];
    print(mf_list.length);
    if (value.isEmpty) {
      results = [];
    }
    else
    {
      results = mf_list.where((mf) {
        final schemeName = mf['schemeName'];
        return schemeName != null && schemeName.toLowerCase().contains(value.toLowerCase());
      }).toList();
    }
    setState(() {
      found_mf_list = results;
    });
  }


  @override
  void initState() {
    super.initState();

    mutualFundsController.addListener(() {
      setState(() {
      });
    });
  }
  @override
  void dispose()
  {
    mutualFundsController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return  ListView(
        scrollDirection: Axis.vertical,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children : [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("MUTUAL FUNDS",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
                letterSpacing: 6,
                fontFamily:'DegularDisplay' ,
                fontWeight:FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green[800],
              ),

            ),
          ),

          // search bar

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 40,

              child: TextField(
                controller: mutualFundsController,
                onChanged: (value) {filterin(value);},
                decoration: InputDecoration(
                  labelText: 'Search Mutual Funds',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily:'DegularDisplay' ,
                  ),

                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide:BorderSide( ) ,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),

                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: listorcards(),
          ),



          //high cap text



        ],

    );
  }
}

