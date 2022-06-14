import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';   // импорт библиотеки для работы с базой firestore


class Uslugi extends StatefulWidget {   // экран с услугами доступен при обращении к классу Uslugi
  const Uslugi({ Key? key }) : super(key: key);

  @override
  State<Uslugi> createState() => _UslugiState();
}

class _UslugiState extends State<Uslugi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Список услуг')),     // верхняя панель приложения
      body:  Center(                                   // тело приложения
        child: StreamBuilder<QuerySnapshot>(           
          stream:  FirebaseFirestore.instance          // обращение к коллекции uslugi
                            .collection('uslugi')
                            .snapshots(),
          builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot){
                  return ListView.builder(                              // виждет списка
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index){
                       return ListTile(                        
                         title: Text(snapshot.data!.docs[index].get('caption')),    // отображение элемента списка, т.е услуг
                         subtitle: Text((snapshot.data!.docs[index].get('price')),),
                       );
                    });            
                            },                            
        )
    )
    );
  }
}