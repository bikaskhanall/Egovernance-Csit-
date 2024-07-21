import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Nid extends StatefulWidget {
  const Nid({super.key});

  @override
  State<Nid> createState() => _NidState();
}

class _NidState extends State<Nid> {
  @override
  Widget build(BuildContext context) {
  final name1Controller = TextEditingController();
  final name2Controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Marriage"),
        backgroundColor: Colors.redAccent,),
        body: Column(children: [
          TextFormField(
            controller:name1Controller ,
            decoration: const InputDecoration(hintText: 'MR .Name'),
          ),TextFormField(
            controller: name2Controller,
             decoration: const InputDecoration(hintText: 'MRS .NAME'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(onPressed: (){
            CollectionReference callRef = FirebaseFirestore.instance.collection('NID');
            callRef.add({
              'name1':name1Controller.text,
              'name2':name2Controller.text,
            });
            }, child: const Text("Submit")),
          )
        
        
        ],)
    );
  }
}