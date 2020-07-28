import 'package:aprendiendo_dart_flutter/src/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Platzi',
      debugShowCheckedModeBanner: false, //ELIMINA EL BANNER DEBUG DE LA INTERFAZ
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Platzi'),
    );
  }
}