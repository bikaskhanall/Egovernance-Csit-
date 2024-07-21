import 'package:egovernancetest/admin/adminbirthpage.dart';
import 'package:egovernancetest/admin/admindeath.dart';
import 'package:egovernancetest/admin/adminmarriage.dart';
import 'package:flutter/material.dart';

class Adminpage extends StatefulWidget {
  const Adminpage({super.key});

  @override
  State<Adminpage> createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("admin section panel"),),
    body: Column(children: [
       Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(height: 70,),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const birthdetails(),));
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child: const Text("Register Birth")),
           ],
         ),const SizedBox(height: 20,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){  
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Admindeath(),));
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child:  Text("Register Death")),
         ],),const SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [TextButton(onPressed: (){  
Navigator.push(context, MaterialPageRoute(builder: (context) => const adminmarriage(),));
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child: const Text("Marriage Records")),
           ],)


    ],),
    );
  }
}