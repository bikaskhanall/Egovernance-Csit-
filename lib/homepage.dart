import 'package:egovernancetest/admin/adminhomepage.dart';
import 'package:egovernancetest/nationalidcardno.dart';
import 'package:egovernancetest/registerdeath.dart';
import 'package:egovernancetest/registerform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: Colors.redAccent,
        title: const Text("E-GOVERNANCE",),
      actions: <Widget>[
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Adminpage(),));
        }, icon: const Icon(Icons.home)),
      ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
          Image.asset("images/gvvt.jpg",height: 150,),
          const Text("Nepal Government",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],),
         const SizedBox(height: 5,),
        const Divider(color: Colors.redAccent,
          thickness: 5,
         ),
         const Center(child:  Text("नेपाल सरकारको आधिकारिक पोर्टल",style: TextStyle(fontSize: 25),)),
          const Row(children: [SizedBox(width: 50,),
          Text("New to our Application?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [const SizedBox(height: 70,),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => myhomeclass(),));
              
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child:  const Text("Register Birth")),
         
           
           ],
         ),const SizedBox(height: 30,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [TextButton(onPressed: (){   
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Nid(),)); 
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child: Text("Marriage")),
            
           ],),
           const SizedBox(height: 30,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){   
              Navigator.push(context, MaterialPageRoute(builder: (context) => myhomeclassdeath(),));
             },style: TextButton.styleFrom(backgroundColor: Colors.redAccent,), child: Text("Register Death")),
           
         ],),const SizedBox(height: 20,),
          
           const Row(
             children: [SizedBox(width: 80,),
               Text("More Features to come,Stay Updated"),
             ],
           ),
           const Padding(
             padding:  EdgeInsets.only(left: 10,right: 10),
             child:  Text("सर्वाधिकार © २०८१ नेपाल सरकार, राष्ट्रिय सूचना प्रविधि केन्द्र, सिंहदरवार, काठमाडौं"),
           )
           ],),
    );
  }
}
