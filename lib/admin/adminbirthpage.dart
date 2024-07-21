import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class birthdetails extends StatelessWidget {
  const birthdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Birth Details"),
        backgroundColor: Colors.redAccent,),
      body: Column(children: [
           
        const Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name "),
            SizedBox(width: 20,),
                Text("Date "),
                SizedBox(width: 20,),
        
          ],
        ),
        StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('Birth').snapshots(), builder: (context,snapshot){
          List<Row>clientWidgets = [];
          if(snapshot.hasData){
            final clients = snapshot.data?.docs.reversed.toList();
            for(var client in clients!){
              final clientWidget = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(client['name']),
                   const SizedBox(width: 20,),
                  Text(client['date']),
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