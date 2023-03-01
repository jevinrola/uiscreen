import 'package:flutter/material.dart';
import 'package:uiscreen/login.dart';

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(top: 199),
                child: const Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
              const Expanded(
                  child: Center(
                    child: Text(
                      "Finance and banking app please login to your\n"
                      "accountfor your check and balance.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const Login();
                              },
                            ),
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ),
                    const Center(
                        child: Text(
                      "Don't have an account? SINGUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
