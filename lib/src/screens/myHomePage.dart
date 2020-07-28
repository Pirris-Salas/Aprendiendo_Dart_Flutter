import 'package:aprendiendo_dart_flutter/src/screens/Button_Custom.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),

      ),
      body: Center( //Centrado del botón
        child: CustomGradientButton(text: Text('Costa Rica'), //Texto del Botón
          width: 150, //ancho
          height: 40, //alto
          gradientColors: [Colors.blue, Colors.white, Colors.red], //colores de la bandera
          initialPosition: Alignment.centerLeft, //posición inicial
          finalPosition: Alignment.centerRight, //posicion final
          function: () => print('Mi primer botón en Flutter!!!'),
          leadingIcon: Icon(Icons.person),
          finalIcon: Icon(Icons.explore),
        ),

      ),
    );
  }
  /**
   * Código acerca de un container y sus diferentes propiedades
   */
  Widget customContainer(){
    return Container(
      width: double.infinity, //Ancho del container utilizando double.infinity, el cual acapara todo el ancho
      height: double.infinity,//Altura del container utilizando double.infinity
      //color: Colors.amber, //Asignando un color de fondo
      padding: EdgeInsets.all(16), //Aplica solo para lo que esté dentro del container
      margin: EdgeInsets.all(16), //Margen del contenedor
      alignment: Alignment.center,
      child: Text('Luis Salas'.toUpperCase()),
      decoration: BoxDecoration(
        color: Colors.amber, //color de fondo del container mediante decoration
        border: Border.all(
          color: Colors.black26, //Borde de color gris del container
          width: 5,
        ),
      ),
      transform: Matrix4.rotationZ(.05), //Hace girar la pantalla levemente, utilizando plano cartesiano
      constraints: BoxConstraints(maxWidth: 100),
    );
  }
}

