// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'balance.dart';

// ignore: must_be_immutable
class Bankbalance extends StatefulWidget {
  var balance_change;
  // ignore: use_key_in_widget_constructors
  Bankbalance(this.balance_change);

  @override
  State<Bankbalance> createState() => _BankbalanceState();
}
class _BankbalanceState extends State<Bankbalance>{
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  late int result=num1,num2=0,num1=widget.balance_change;
  add(){
    setState(() {
      num1=result;
      num2=int.parse(controller2.text);
      result=num1 + num2;
    });
  }
  sub(){
    setState(() {
      num1=result;
      num2=int.parse(controller2.text);
      result=num1 - num2;
    });
  }
  @override

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
            centerTitle: true,
            title: const Text('Bank Balance'),
          ),
          body: Container(
            color: Colors.black,
            child: Expanded(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  YourBalance(),

                  // Container(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(bottom: 40,right: 20),
                  //         child: Column(
                  //             children: [
                  //           Center(
                  //             child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                   height: 50,
                  //                   width: 50,
                  //                   decoration: BoxDecoration(
                  //                       color: Colors.white24,
                  //                       borderRadius: BorderRadius.circular(8)),
                  //                   child:const Center(
                  //                     child: Text('+',
                  //                         style: TextStyle(
                  //                             fontSize: 25,
                  //                             fontWeight: FontWeight.bold,
                  //                             color: Colors.white)),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ]),
                  //       ),
                  //       Column(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.only(bottom: 40,right: 20),
                  //             child: Center(
                  //               child: Row(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Container(
                  //                     height: 50,
                  //                     width: 50,
                  //                     decoration: BoxDecoration(
                  //                         color: Colors.white24,
                  //                         borderRadius: BorderRadius.circular(8)),
                  //                     child:const Center(
                  //                       child: Text('-',
                  //                           style: TextStyle(
                  //                               fontSize: 25,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white)),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    color: Colors.white24,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Column(
                          children: [
                            Text("Ammount : $result",
                              style: const TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                              color: Colors.white),
                            ),

                            const SizedBox(height: 20,),
                            TextFormField(
                              controller: controller2,
                              decoration:
                              InputDecoration(
                                  labelText: "Ammount",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),),
                            const SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: () {
                                    add();
                                    // controller1.clear();
                                    controller2.clear();
                                  }, child: const Text('Sell')),
                                  ElevatedButton(onPressed: () {
                                    sub();
                                    // controller1.clear();
                                    controller2.clear();
                                  }, child: const Text("Purchase"))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ]),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Balances()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            ElevatedButton(
                              onPressed: () {
                                return Navigator.pop(context,result);
                              },
                              child: Container(
                                height: 55,
                                width: 320,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(8)),
                                child:const Center(
                                  child: Text('Pay',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget YourBalance() {
    return Center(
      child: Card(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.2),
        ),
        color: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 80,
                margin: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                ),
                child: Row(
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [

                    const Text(
                      "June 14, 2020",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "\$ $result",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 55),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Text(
                              "15%",
                              style: TextStyle(color: Colors.white,
                                fontSize: 20,
                              ),

                            ),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ]),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

}
