import 'package:flutter/material.dart';

class Info extends StatefulWidget {               // экран с информацией доступен при обращении к классу Info
  const Info({ Key? key }) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Информация о УПМ "Графика"'),),           // верхняя панель приложения 
      body: 
       ListView(children: [
              Image.network('https://i.ibb.co/0DB1QqV/photo-2022-06-03-14-37-08.jpg'),   // в теле приложения находится виджет для отображения изображений
              Image.network('https://i.ibb.co/M1jJwZ4/qv7d-Epch-FKv5-Ojl7-Hf-LXz-Zipb-VR-1qo-Fu-S8a-Frl-Vfu-WZt-C4-Fnwl-Qdzb-Cn-Guq-P1-BIZFDG66y7-Dgx-CSe.jpg'),   // в теле приложения находится виджет для отображения изображений
              Image.network('https://i.ibb.co/FqC848t/w-N8ik-Un9-Gmzo-YY0-JGbj5n-QGU3-OJt-DBVHp43-Dr4-Fh-Epn122-n0-Hq-Bb-ZOBb7-KUg-Pcicw-Ip-YH61vhc3ir-B3.jpg'),   // в теле приложения находится виджет для отображения изображений
              Image.network('https://i.ibb.co/gFpj0jM/lzj-d-HYrwqq8-Dnd-Qs-Ifn-IAi6wsp-Mq-LMl-Sv-ZGRPy4-WIZ5-1ltn39v-Lk58g-Zg-HYy-STn6evdn-U6qeo-H1-Mop.jpg'),   // в теле приложения находится виджет для отображения изображений

       ],)
      
      
    );
  }
}