import 'package:flutter/material.dart';               // импорт основной библиотеки, в которой содержится виджеты материал дизайна 
import 'package:firebase_core/firebase_core.dart';    // импорт библиотеки firebase_core, для синхронизации с firebase
import 'package:graphika/grafic_rab.dart';            // импорт страницы c графиком работы
import 'package:graphika/info.dart';                  // импорт страницы c информацией о УМП
import 'package:graphika/map.dart';                   // импорт страницы c картами Google
import 'package:graphika/uslugi.dart';                // импорт страницы c услугами

void main() async {                                 // главная функция входа в приложение
  WidgetsFlutterBinding.ensureInitialized();         
  await Firebase.initializeApp();                   // инициализация firebase
  runApp(const MyApp());                            // запуск корневого виджета 
}

class MyApp extends StatelessWidget {               // класс MyApp корневой виджет, с настройками
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',  // 
      theme: ThemeData(                             // настройки темы приложения
      
        primarySwatch: Colors.blue,               // основной цвет 
      ),
      home: const MyHomePage(title: 'Справочник о УПМ Графика'),   // запуск главного экрана и передача параметра с заголовком
    );
  }
}

class MyHomePage extends StatefulWidget {             // главный экран с навигацией (меню)
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                      // верхняя панель приложения
        title: Text(widget.title),         // надпись на панели 
      ),
      body: Center(                        // тело приложения
        child: ListView(                   // виджет списка
          children: [               
              ListTile(                    // виджет списка, на который можно нажать
                leading: const Icon(Icons.info_outline, color: Colors.black,),                // иконка 
                title: const Text("Информация о УПМ"),                                          // надпись  
                onTap: (){                                                                      // функция обрабочик события нажатия на элемент списка
                   Navigator.push(context,  
                      MaterialPageRoute(builder: (context) => Info(),));  // навигация на экран информации - который содержится в файле info.dart с классом Info 
                },
              ),
              ListTile(                     // виджет списка, на который можно нажать
                leading: const Icon(Icons.list),              // иконка
                title: const Text("Услуги"),                  // надпись 
                onTap: (){                                   // функция обрабочик события нажатия на элемент списка
                   Navigator.push(context,           // навигация на экран информации - который содержится в файле uslugi.dart с классом Uslugi
                    MaterialPageRoute(builder: (context) => Uslugi(),));
                },         
              ),
              ListTile(                   // виджет списка, на который можно нажать
                leading: const Icon(Icons.list),             // иконка
                title: const Text("График работы"),          // надпись 
                onTap: (){                                  // функция обрабочик события нажатия на элемент списка
                   Navigator.push(context,                  // навигация на экран информации - который содержится в файле grafic_rab.dart с классом GRab
                    MaterialPageRoute(builder: (context) => GRab(),));
                },
              ),
              ListTile(                  // виджет списка, на который можно нажать
                leading: const Icon(Icons.list),             // иконка
                title: const Text("УПМ Графика на карте"),    // надпись 
                onTap: (){                                    // функция обрабочик события нажатия на элемент списка
                   Navigator.push(context,          // навигация на экран информации - который содержится в файле map.dart с классом Maps
                     MaterialPageRoute(builder: (context) => Maps(),));
                },
              ),
          ]
          ,)
      ),
    );
  }
}
