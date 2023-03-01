import 'package:flutter/material.dart';

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
                margin: const EdgeInsets.only(top: 300),
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
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
                        builder: (context) => const Balances()
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
                        child: const Center(
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


            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
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
