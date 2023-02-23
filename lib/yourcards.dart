import 'package:flutter/material.dart';

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
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          body: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Card",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Your have 3 Active Cards",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    child: Icon(Icons.add, size: 40),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [Image(image: AssetImage('images/card.jpeg'))],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.2),
                    ),
                    color: Colors.white24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.fastfood_outlined,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.all(15),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 12, left: 0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "KFC",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "june 26",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "+\$2020",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: Card(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.2),
                      ),
                      color: Colors.white24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.fastfood_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(15),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 12, left: 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "KFC",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "june 26",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+\$2020",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.2),
                    ),
                    color: Colors.white24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.fastfood_outlined,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.all(15),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 12, left: 0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "KFC",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "june 26",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "+\$2020",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              if (currentIndex == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Balances();
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
    );
  }
}
