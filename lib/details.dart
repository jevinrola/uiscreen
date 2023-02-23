import 'package:flutter/material.dart';
import 'package:uiscreen/yourbalance.dart';
import 'package:uiscreen/yourcards.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  var userNameController = TextEditingController();
  var fatherNameController = TextEditingController();
  var surnameController = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var pinCodeNumberController = TextEditingController();
  var birthDayController = TextEditingController();
  bool isRememberMe = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Container(
            child: Card(
              color: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Enter Your Name : ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: userNameController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Enter Your Name : ';
                          }
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Enter Father Name : ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: fatherNameController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Enter Your FatherName : ';
                          }
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Enter SurName : ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: surnameController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Enter Your SurName : ';
                          }
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Enter Your City : ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: cityController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Enter Your City : ';
                          }
                        },
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isRememberMe = !isRememberMe;
                            print('isRememberMe ::: $isRememberMe');
                          });
                        },
                        child: Row(
                          children: [
                            Checkbox(
                              value: isRememberMe,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Balance();
                                      },
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                'Submeet',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
