import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'details.dart';

class Update extends StatefulWidget {

  Update(this.map);
  Map? map;

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {

  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var addressController = TextEditingController();
  var loansController = TextEditingController();
  var avatarController = TextEditingController();


  @override

  void initState() {
    super.initState();
    nameController.text = widget.map == null ? '' : widget.map!['name'];
    mobileController.text = widget.map == null ? '' : widget.map!['mobile'];
    addressController.text = widget.map == null ? '' : widget.map!['address'];
    loansController.text = widget.map == null ? '' : widget.map!['loans'];
    avatarController.text = widget.map == null ? '' : widget.map!['avatar'];

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
      ),
      body: Container(

        child: Form(
          key: formkey,
          child: Container(
            color:Colors.black38 ,
            padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter name"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "enter name";
                      }
                    },
                    controller: nameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter mobile"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "enter mobile";
                      }
                    },
                    controller: mobileController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter address"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter address";
                      }
                    },
                    controller: addressController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter loan"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter loan";
                      }
                    },
                    controller: loansController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter avatar"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Enter avatar";
                      }
                    },
                    controller: avatarController,
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                if (widget.map != null) {
                                  updatetUser(widget.map!['id']).then(
                                          (value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stu(),)));
                                }
                              }
                            },
                            child: Text("update")),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                            onPressed: () {
                              showDeleteAlert(widget.map!['id']);
                            },
                            child: Text("Delete",style: TextStyle(color: Colors.white,fontSize: 15))),
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

  //update_operation

  Future<dynamic> updatetUser(id) async {
    Map map = {};
    map["name"] = nameController.text;
    map["mobile"] = mobileController.text;
    map["address"] = addressController.text;
    map["loans"] = loansController.text;
    map["avatar"] = avatarController.text;


    var response1 = await http.put(
        Uri.parse("https://631607e533e540a6d38aeff3.mockapi.io/students/$id"),
        body: map);
    print(response1.body);
  }

  //delete_operation

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sure"),
          content: Text("it will be delete parmanetaly"),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteUser(id);
                  if (res.statusCode == 200) {
                    setState(() {});
                  }
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stu(),));
                },
                child: Text("yes")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("no"))
          ],
        );
      },
    );
  }

  Future<dynamic> deleteUser(id) async {
    var response1 = await http.delete(
        Uri.parse("https://631607e533e540a6d38aeff3.mockapi.io/students/$id"));
    print(response1.body);
    return response1;
  }

  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse('https://631607e533e540a6d38aeff3.mockapi.io/students'));
    return jsonDecode(res.body.toString());
  }
}
