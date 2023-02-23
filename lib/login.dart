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
              margin: EdgeInsets.only(bottom: 20),
                child: Text(
              'Finance and banking app please login to ypur \n'
              '      account for your check and balance',
              style: TextStyle(
                color: Colors.white,
              ),
            )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Balances()
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 320,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text('Login',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Container(
            //   child: Card(
            //     margin: EdgeInsets.only(top: 50, left: 35, right: 35),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     color: Colors.deepPurple,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             InkWell(
            //               onTap:() {
            //                 Navigator.of(context).push(
            //                   MaterialPageRoute(
            //                     // builder: (context) => Balance(),
            //                     builder: (context) {
            //                       return Balances();
            //                     },
            //                   ),
            //                 );
            //               },
            //               child: Container(
            //                 margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //                 child: Text(
            //                   'Login',
            //                   style: TextStyle(
            //                     fontSize: 20,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
