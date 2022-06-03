import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:graphika/grafic_rab.dart';
import 'package:graphika/info.dart';
import 'package:graphika/uslugi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',  // 
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Справочник о УПМ Графика'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
      
        child: ListView(
          children: [
              ListTile(
                leading: const Icon(Icons.info_outline, color: Colors.black,),
                title: const Text("Информация о УПМ"),
                onTap: (){
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => Info(),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text("Услуги"),
                onTap: (){
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => Uslugi(),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text("График работы"),
                onTap: (){
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => GRab(),));
                },
              ),
          ]
          ,)


      ),
     
    );
  }
}
