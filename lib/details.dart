import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uiscreen/update.dart';

import 'balance.dart';
import 'insert.dart';

//ApiCall on Hotel Button

class Stu extends StatefulWidget {
  const Stu({super.key});

  @override
  State<Stu> createState() => _StuState();
}

class _StuState extends State<Stu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Balances(),));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.white,
            )),
        title: const Text(
          'Student Loans',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(child: const Icon(Icons.add,color: Colors.white,size: 25,),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Insert(null);
                },
              )).then((value) => (value) {
                if (value == true) {
                  setState(() {});
                }
              });
            },
          ),
        )],
      ),
      body: Container(
        color: Colors.black,
        child: FutureBuilder<dynamic>(
            builder: (context, snapshot) {
              if (snapshot.data != null && snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Update(snapshot.data![index]);
                              },
                            )).then((value) => (value) {
                              if (value == true) {
                                setState(() {});
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Card(

                              color: Colors.deepPurple,
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 5, right: 10, left: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Container(
                                padding: const EdgeInsets.only(top: 30,bottom: 30,left: 10,right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 10),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          child: Image.network(
                                            snapshot.data![index]['avatar'],
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ]),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              margin: const EdgeInsets.only(left: 15),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      snapshot.data![index]['name']
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.location_on_outlined,
                                                        size: 30,color: Colors.white,
                                                      ),
                                                      Text(snapshot.data![index]
                                                      ['address'],style: const TextStyle(fontSize: 18,
                                                      color: Colors.white)),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                                    child: Row( children: [
                                                      Text(snapshot.data![index]
                                                      ['loans'],
                                                          style: const TextStyle(fontSize: 18,color: Colors.white
                                                          )),
                                                    ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      snapshot.data![index]['mobile'],
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
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
                        ),
                      ],
                    );
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
            future: callApi()),
      ),
    );
  }

  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse('https://631607e533e540a6d38aeff3.mockapi.io/students'));
    return jsonDecode(res.body.toString());
  }

}
