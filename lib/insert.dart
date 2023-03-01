import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'details.dart';
// ignore: must_be_immutable
class Insert extends StatefulWidget {
  Insert(this.map, {super.key});
  Map? map;
  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var addressController = TextEditingController();
  var loansController = TextEditingController();
  // var avatarController = TextEditingController();

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: formkey,
        child: Container(
          color:Colors.black38 ,
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Enter name"),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "enter name";
                    }
                    return null;
                  },
                  controller: nameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Enter mobile"),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "enter mobile";
                    }
                    return null;
                  },
                  controller: mobileController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Enter address"),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "enter address";
                    }
                    return null;
                  },
                  controller: addressController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Enter loans"),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "enter loans";
                    }
                    return null;
                  },
                  controller: loansController,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //   child: TextFormField(
              //     decoration: const InputDecoration(hintText: "upload img"),
              //     validator: (value) {
              //       if (value != null && value.isEmpty) {
              //         return "upload img";
              //       }
              //       return null;
              //     },
              //     controller: avatarController,
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        insertUser().then(
                                (value) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Stu(),)));
                      }
                    },
                    child: const Text("Submit")),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<dynamic> insertUser() async {
    Map map = {};
    map["name"] = nameController.text;
    map["mobile"] = mobileController.text;
    map["address"] = addressController.text;
    map["loans"] = loansController.text;
    // map["avatar"]=avatarController;

    var response1 = await http.post(
        Uri.parse("https://631607e533e540a6d38aeff3.mockapi.io/students"),
        body: map);
    return response1;
  }

}