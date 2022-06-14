import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget { // экран с картой доступен при обращении к классу Maps
  const Maps({ Key? key }) : super(key: key);
  @override
  State<Maps> createState() => _MapsState();
}
class _MapsState extends State<Maps> {
  Completer<GoogleMapController> _controller = Completer();   // создаем контролер карты
  static final CameraPosition _kGooglePlex = CameraPosition(  // переменная с координатой центральной позиции экрана 
    target: LatLng(51.702659615376255, 94.42391409750547),
    zoom: 18,
  );

      Set<Marker> _markers = {};                              // создание маркера
    void _onMapCreated (GoogleMapController controller) {    // функция для добавления маркера
      setState(() {
        _markers.add(                                        // метод добавления маркера
          const Marker(
            markerId: MarkerId("id-1"),
            position: LatLng(51.702659615376255, 94.42391409750547), // координата маркера
            infoWindow: InfoWindow(
            title: "УПМ Графика"                          // текст при нажатии на маркер
          )
          )
        );
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('УПМ Графика на карте'),),
      body: GoogleMap(                                  // тело приложения состоит из виджета гугл карт
        initialCameraPosition: _kGooglePlex,            // начальная координата карты 
        onMapCreated: _onMapCreated,                    // вызов функции при создании карты
        markers: _markers,                              // список маркеров карты
        
        ),
    );
  }
}