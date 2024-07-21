import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class myhomeclass extends StatelessWidget {
   myhomeclass({super.key});

  final nameController = TextEditingController();

  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("submit your form"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0,left: 20.0),
        child: Column(children: [
          TextFormField(
            controller:nameController ,
            decoration: const InputDecoration(hintText: 'Name'),
          ),TextFormField(
            controller: dateController,
             decoration: const InputDecoration(hintText: 'Date'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(onPressed: (){
            CollectionReference callRef = FirebaseFirestore.instance.collection('Birth');
            callRef.add({
              'name':nameController.text,
              'date':dateController.text,
            });
            }, child: const Text("Submit")),
          )
        
        
        ],),
      ),
    );
  }
}