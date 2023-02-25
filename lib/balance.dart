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
                Card(
                  margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.2),
                  ),
                  color: Colors.white24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 80,
                          margin: EdgeInsets.only(top: 50,left: 20,),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "June 14, 2020",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        ),
                                  ),
                                  Text(
                                    "\$27,802.05",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 60),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "15%",
                                style:
                                TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              Icon(Icons.arrow_upward,
                              color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),


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
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.pink,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:Colors.white24,
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
                          const EdgeInsets.only(left: 20, top: 5),
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
                                    color:Colors.white24,                                  )),
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
                          const EdgeInsets.only(left: 20, top: 5),
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
                                    color:Colors.white24,                                  )),
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
                          const EdgeInsets.only(left: 20, top: 5),
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
                                    color:Colors.white24,                                  )),
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
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Center(child: Image(image: AssetImage('assets/images/graph.jpg',),height: 250,))
                  ],),
                )

              ],
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
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
}
