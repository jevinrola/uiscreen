import 'package:flutter/material.dart';
import 'package:uiscreen/yourcards.dart';

import 'login.dart';

class Balance extends StatefulWidget {
  Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Your Balance',
            ),
            backgroundColor: const Color(0xff764abc),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                Container(
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: const Text('Detail'),

                  ),
                ),
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Your Balance'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.corporate_fare,
                  ),
                  title: const Text('Corporate App'),

                ),
                ListTile(
                  leading: Icon(
                    Icons.security,
                  ),
                  title: const Text('Security'),

                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                  ),
                  title: const Text('Onlain Shopping'),

                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: const Text('Home'),
                  
                ),
                ListTile(
                  leading: Icon(
                    Icons.login,
                  ),
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Login();
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
            child: Column(children: [
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 40, left: 15, right: 15, bottom: 17),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         CircleAvatar(
              //             child: Icon(Icons.menu, color: Colors.black),
              //             backgroundColor: Colors.grey[200]),
              //         CircleAvatar(
              //             child: Icon(
              //               Icons.person,
              //               color: Colors.black,
              //             ),
              //             backgroundColor: Colors.grey[200]),
              //       ]),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 15, bottom: 14),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
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
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.2),
                      ),
                      color: Colors.white24,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(120, 60, 120, 60),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    '27,802.05',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          children: [
                            Container(
                                height: 55,
                                width: 55,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.pink,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFDCDCDC),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  child: Text(
                                    "Sent",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          children: [
                            Container(
                                height: 55,
                                width: 55,
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFDCDCDC),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  child: Text(
                                    "Receive",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          children: [
                            Container(
                                height: 55,
                                width: 55,
                                child: Icon(
                                  Icons.currency_rupee,
                                  color: Colors.orange,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFDCDCDC),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  child: Text(
                                    "Loan",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          children: [
                            Container(
                                height: 55,
                                width: 55,
                                child: Icon(
                                  Icons.cloud_upload_outlined,
                                  color: Colors.blue,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFDCDCDC),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                  child: Text(
                                    "Topup",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Row(children: [
                        Expanded(child: Image(image: AssetImage('assets/images/graph.jpg'))
                        )
                      ],)
                    ],
                  ),
                ),
              ),
            ]),
          ),
          bottomNavigationBar: Container(
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                if (currentIndex == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(context) {
                     return Cards();
                    }
                    ),
                    );
                }
                else if (currentIndex == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Cards();
                    },
                    ),
                  );
                }
                else
                  setState(() {
                    currentIndex = index;
                  });
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance),
                  label: 'Account',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card),
                  label: 'Cards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.currency_rupee),
                  label: 'Loans',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
