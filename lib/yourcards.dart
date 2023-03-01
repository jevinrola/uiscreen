import 'package:flutter/material.dart';
import 'package:uiscreen/details.dart';

import 'balance.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsStates();
}

class _CardsStates extends State<Cards> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.black,

          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Expanded(
                        child: ListTile(
                          title: Text(
                            "Your Cards",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "You have 3 Active Cards",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                    ),
                    creditCard(),
                    Container(
                      color: Colors.black,
                      padding:const EdgeInsets.only(
                        left: 40,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "Recent Transactions",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      customTransaction(
                          icon: "assets/images/Burger.png",
                          title: "KFC",
                          subtitle: "June 26",
                          amount: "+\$2,010"),
                      customTransaction(
                          icon: "assets/images/paypal.png",
                          title: "Paypal",
                          subtitle: "June 28",
                          amount: "+\$12,010"),
                      customTransaction(
                          icon: "assets/images/Burger.png",
                          title: "Car Repair",
                          subtitle: "Aug 12",
                          amount: "+\$232,010"),
                    ],
                  ),
                ),
              ),
            ],
          ),


          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              if (currentIndex == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Balances();
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
              } else {
                setState(() {
                  currentIndex = index;
                });
              }
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
    );
  }

  Widget customTransaction({icon, title, subtitle, amount}) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            color: Colors.grey.shade800,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(15),
                  child: Image.asset(
                    icon,
                    scale: 2,
                    height: 55,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          subtitle,
                          style: const TextStyle(
                              color: Colors.white54, fontSize: 11),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    amount,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget creditCard() {
    return Expanded(child: Container(
        margin: const EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.deepPurple,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            "assets/images/chip.png",
                            height:70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "4562 1122 4595 7852",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Ghulam",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Expiry Date",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "24/2024",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 70,
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: const [
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
