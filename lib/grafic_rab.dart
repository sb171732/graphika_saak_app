import 'package:flutter/material.dart';

class GRab extends StatefulWidget {    // экран с графиком работы доступен при обращении к классу GRab
  const GRab({ Key? key }) : super(key: key);

  @override
  State<GRab> createState() => _GRabState();
}

class _GRabState extends State<GRab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('График работы')),                                    // верхняя панель приложения 
      body: Image.network('https://i.ibb.co/k3s6PXn/photo-2022-06-03-14-29-11.jpg')   // в теле приложения находится виджет для отображения изображений
      
    );
  }
}