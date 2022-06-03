import 'package:flutter/material.dart';

class GRab extends StatefulWidget {
  const GRab({ Key? key }) : super(key: key);

  @override
  State<GRab> createState() => _GRabState();
}

class _GRabState extends State<GRab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('График работы')),
      body: Image.network('https://i.ibb.co/k3s6PXn/photo-2022-06-03-14-29-11.jpg')
      
    );
  }
}