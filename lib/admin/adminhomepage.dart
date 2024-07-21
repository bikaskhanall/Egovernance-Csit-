import 'package:egovernancetest/admin/adminbirthpage.dart';
import 'package:egovernancetest/admin/admindeath.dart';
import 'package:egovernancetest/admin/adminmarriage.dart';
import 'package:egovernancetest/registerdeath.dart';
import 'package:egovernancetest/registerform.dart';
import 'package:flutter/material.dart';

class Adminpage extends StatefulWidget {
  const Adminpage({super.key});

  @override
  State<Adminpage> createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("admin section panel"),),
    body: Column(children: [
       Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [SizedBox(height: 70,),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const birthdetails(),));
             }, child: Text("Register Birth"),style: TextButton.styleFrom(backgroundColor: Colors.redAccent,)),
           ],
         ),SizedBox(height: 20,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){  
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Admindeath(),));
             }, child: Text("Register Death"),style: TextButton.styleFrom(backgroundColor: Colors.redAccent,)),
         ],),SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [TextButton(onPressed: (){  
Navigator.push(context, MaterialPageRoute(builder: (context) => const adminmarriage(),));
             }, child: Text("Marriage Records"),style: TextButton.styleFrom(backgroundColor: Colors.redAccent,)),
           ],)


    ],),
    );
  }
}