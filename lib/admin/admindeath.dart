import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Admindeath extends StatefulWidget {
  const Admindeath({super.key});

  @override
  State<Admindeath> createState() => _AdmindeathState();
}

class _AdmindeathState extends State<Admindeath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Death details"),
        backgroundColor: Colors.redAccent,),
      body: Column(children: [
        
        const Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name ",style: TextStyle(fontSize: 30),),
            SizedBox(width: 20,),
                Text("Date ",style: TextStyle(fontSize: 30),),
                SizedBox(width: 20,),
        
          ],
        ),
                
        StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('Death').snapshots(), builder: (context,snapshot){
          List<Row>clientWidgets = [];
          if(snapshot.hasData){
            final clients = snapshot.data?.docs.reversed.toList();
            for(var client in clients!){
              final clientWidget = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(client['name'],style: const TextStyle(fontSize: 30),),
                  const SizedBox(width: 20,),
                  Text(client['date'],style: const TextStyle(fontSize: 30),),
                ],
              );
              clientWidgets.add(clientWidget);
            }
          }
          return Expanded(
            child: ListView(
              children: clientWidgets,
            ),
          );
        })

      ],),
    );
  }
}