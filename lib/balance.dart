import 'package:flutter/material.dart';
import 'package:uiscreen/details.dart';
import 'package:uiscreen/yourbalance.dart';
import 'package:uiscreen/yourcards.dart';
import 'package:fl_chart/fl_chart.dart';


import 'login.dart';

class Balances extends StatefulWidget {
  const Balances({Key? key}) : super(key: key);

  @override
  State<Balances> createState() => _BalanceStates();
}

class _BalanceStates extends State<Balances> {
  var currentIndex = 1;
  // ignore: non_constant_identifier_names
  var balance_change = 27802;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text('Your Balance'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  color: Colors.black54,
                  child: const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Detail'),
                  ),
                ),
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: Text('Your Balance'),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.corporate_fare,
                  ),
                  title: Text('Corporate App'),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.security,
                  ),
                  title: Text('Security'),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                  ),
                  title:  Text('Onlain Shopping'),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title:  Text('Home'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.login,
                  ),
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Login();
                          },

                      ),
                    );

                  },
                ),
              ],
            ),
          ),



          body: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 18, right: 15, bottom: 14),
                  child: Row(children: [
                    Expanded(
                      child:  Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Your Balance',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),


                YourBalance(),

                SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only( top: 5),
                          child: Column(
                            children: [
                              Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:Colors.white24,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    color: Colors.pink,
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Sent",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            children: [
                              Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:Colors.white24,                                  ),
                                  child: const Icon(
                                    Icons.arrow_downward,
                                    color: Colors.green,
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Receive",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            children: [
                              Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:Colors.white24,                                  ),
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    color: Colors.orange,
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Loan",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            children: [
                              Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:Colors.white24,                                  ),
                                  child: const Icon(
                                    Icons.cloud_upload_outlined,
                                    color: Colors.blue,
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Topup",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        borderData: FlBorderData(
                            show: false
                        ),
                        gridData: FlGridData(
                          show: false,
                        ),
                        titlesData: FlTitlesData(
                          show: false,
                        ),
                        maxX: 5,
                        maxY: 5,
                        minX: 0,
                        minY: 0,
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 0),
                              const FlSpot(0.5, 0.6),
                              const FlSpot(1.1, 1.9),
                              const FlSpot(1.4, 2.20),
                              const FlSpot(1.6, 2.02),
                              const FlSpot(1.9, 1.1),
                              const FlSpot(2.3, 1.8),
                              const FlSpot(2.6, 2.6),
                              const FlSpot(3, 2.7),
                              const FlSpot(3.1, 1.8),
                              const FlSpot(3.6, 1.9),
                              const FlSpot(4.5,4.9),
                              const FlSpot(5, 4),
                            ],
                            dotData: FlDotData(
                              show: false,
                            ),
                            isCurved: true,
                            colors: [Colors.deepPurple, ],
                            barWidth: 3,
                            belowBarData: BarAreaData(
                              show: true,
                              colors: [Colors.deepPurple, Colors.black,],
                              gradientFrom: const Offset(0, 0.1),
                              gradientTo: const Offset(0, 0.92),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white12,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: const Text("Jan", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.grey.shade900,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          child: const Text("Feb", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.grey.shade900,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          child: const Text("Mar", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.grey.shade900,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(6),
                          child: const Text("Apr", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white12,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: const Text("May", style: TextStyle(color: Colors.white, fontSize: 14),),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.deepPurple,
                          ),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: const Text("Jun", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              if (currentIndex == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Cards();
                  }),
                );
              } else if (currentIndex == 2) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Stu();
                    },
                  ),
                );
              }

              else {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance,
                ),
                label: 'Account',

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card,
                ),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee,
                ),
                label: 'Loans',
              ),
            ],
          ),
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget YourBalance() {
    return Center(
      child: Card(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.2),
        ),
        color: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 80,
                margin: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          "June 14, 2020",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "\$$balance_change",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Text(
                              "15%",
                              style: TextStyle(color: Colors.white,
                                fontSize: 20,
                              ),

                            ),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            child: const Text('Buy',style: TextStyle(fontSize: 15)),
                            onPressed: () async{
                              final boolData = await Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>  Bankbalance(balance_change)
                                ),
                              );
                              setState(() {
                                balance_change = boolData;
                              });
                            },
                          ),
                          const SizedBox(width: 8),

                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

}
