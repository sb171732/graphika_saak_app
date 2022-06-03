import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Uslugi extends StatefulWidget {
  const Uslugi({ Key? key }) : super(key: key);

  @override
  State<Uslugi> createState() => _UslugiState();
}

class _UslugiState extends State<Uslugi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Список услуг')),
      body:  Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: StreamBuilder<QuerySnapshot>(
          stream:  FirebaseFirestore.instance
                            .collection('uslugi')
                            .snapshots(),
          builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot){
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index){
                       return ListTile(
                         title: Text(snapshot.data!.docs[index].get('caption')),
                       );
                    });            
                            },                            
        )


      
    )
    );
    
    
    
     
  }
}