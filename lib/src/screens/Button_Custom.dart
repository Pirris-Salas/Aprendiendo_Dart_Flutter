import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget{

  final Text text;
  final double width;
  final double height;
  final List<Color> gradientColors;
  final Alignment initialPosition;
  final Alignment finalPosition;
  final Function function;
  final Icon leadingIcon;
  final Icon finalIcon;

  /**
   * Metodo constructor de todas las variables final, de esta forma no debemos de
   * inicializarlas tan pronto se declaran
   *
   * @required PARAMETROS REQUERIDOS PARA INICIALIZAR LA CLASE
   */
  const CustomGradientButton(
      {Key key,
        @required this.text,
        @required this.width,
        @required this.height,
        @required this.gradientColors,
        @required this.initialPosition,
        @required this.finalPosition,
        @required this.function,
        this.leadingIcon,
        this.finalIcon})
      : super(key: key);


  //ESTE METODO DEBE DE ESTAR EN TODAS LAS CLASES QUE HEREDEN DE StatelessWidget()
  //Acá estamos retornando un botón o un contenedor para un botón
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: width, //variable declarada, ancho del container
        height: height, //variable declarada, alto del container
        decoration: BoxDecoration( // Colores del botón, ya que será tipo gradient
          //borderRadius: BorderRadius.circular(height/2), // Todos los bordes circulares
          borderRadius: BorderRadius.only(topRight: Radius.circular(height/2),
          topLeft: Radius.circular(height/2) ),
            gradient: LinearGradient(
            colors: gradientColors, //lista de colores declarados, vector
            begin: initialPosition, //Posición inicial del gradiente
            end: finalPosition, //Posición final del gradient
          ),
          boxShadow: [ //Declarando una sombra para el botón
            BoxShadow(
              color: Colors.black, //color de la sombra
              offset: Offset(2,-2), //proyección de la sombra, 2 en el eje x y -2 en y
              blurRadius: height * .1, //esto al parecer crea un desenfoque de la sombra
              spreadRadius: 1,
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            leadingIcon ?? Container(),
            text,
            finalIcon ?? Offstage(),
          ],
        ),
      ),
    );
  }


}