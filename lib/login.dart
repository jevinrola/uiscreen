import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiscreen/yourbalance.dart';

import 'balance.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 300),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                child: Text(
              'Finance and banking app please login to ypur \n'
              '      account for your check and balance',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
            Container(
              child: Card(
                margin: EdgeInsets.only(top: 50, left: 35, right: 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
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
                          margin: EdgeInsets.fromLTRB(190, 10, 10, 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  // builder: (context) => Balance(),
                                  builder: (context) {
                                    return Balances();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Don not have an account ??'
                'Singup',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
