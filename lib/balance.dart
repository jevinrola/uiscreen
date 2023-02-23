import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiscreen/yourcards.dart';

import 'login.dart';

class Balances extends StatefulWidget {
  Balances({Key? key}) : super(key: key);

  @override
  State<Balances> createState() => _BalanceStates();
}

class _BalanceStates extends State<Balances> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('Your Balance'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  color: Colors.black54,
                  child: ListTile(
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
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18, right: 15, bottom: 14),
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
                Center(
                  child: Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 15),
                      child: Row(children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.2),
                          ),
                          color: Colors.deepPurple,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(120, 60, 120, 60),
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
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                if (currentIndex == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Cards();
                    }),
                  );
                } else if (currentIndex == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Cards();
                      },
                    ),
                  );
                } else
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
