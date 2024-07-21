import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class adminmarriage extends StatefulWidget {
  const adminmarriage({super.key});

  @override
  State<adminmarriage> createState() => _adminmarriageState();
}

class _adminmarriageState extends State<adminmarriage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Death details"),
        backgroundColor: Colors.redAccent,),
      body: Column(children: [
        
        const Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MR Name "),
            SizedBox(width: 20,),
                Text("MRS NAME "),
                SizedBox(width: 20,),
        
          ],
        ),
                
        StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('Marriage').snapshots(), builder: (context,snapshot){
          List<Row>clientWidgets = [];
          if(snapshot.hasData){
            final clients = snapshot.data?.docs.reversed.toList();
            for(var client in clients!){
              final clientWidget = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(client['name1']),
                  const SizedBox(width: 20,),
                  Text(client['name2']),
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