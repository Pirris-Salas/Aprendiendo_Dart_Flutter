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
      body: customContainer(), //Invocamos el método customcontainer creado abajo
      //floatingActionButton: FloatingActionButton(
       // onPressed: _incrementCounter,
        //tooltip: 'Increment',
        //child: Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
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