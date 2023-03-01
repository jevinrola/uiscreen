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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Balances(),));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.white,
            )),
        title: Text(
          'Student Loans',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(child: Icon(Icons.add,color: Colors.white,size: 25,),
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
                            padding: EdgeInsets.all(10),
                            child: Card(

                              color: Colors.deepPurple,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 5, right: 10, left: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Container(
                                padding: EdgeInsets.only(top: 30,bottom: 30,left: 10,right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          child: Image.network(
                                            snapshot.data![index]['avatar'],
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ], crossAxisAlignment: CrossAxisAlignment.stretch),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              margin: EdgeInsets.only(left: 15),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      snapshot.data![index]['name']
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on_outlined,
                                                        size: 30,color: Colors.white,
                                                      ),
                                                      Text(snapshot.data![index]
                                                      ['address'],style: TextStyle(fontSize: 18,
                                                      color: Colors.white)),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                    child: Row( children: [
                                                      Text(snapshot.data![index]
                                                      ['loans'],
                                                          style: TextStyle(fontSize: 18,color: Colors.white
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
                                                      style: TextStyle(
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
                return Center(child: CircularProgressIndicator());
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
