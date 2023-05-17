//importacion de libreria material
import 'package:flutter/material.dart';

//crea la clase y el estado a cambiar
class Botonescontadores extends StatefulWidget {
  const Botonescontadores({super.key});
  _Botonescontadores createState() => _Botonescontadores();
}

//crea los widgets a mostrar
class _Botonescontadores extends State<Botonescontadores> {
  int _X = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones contadores'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador de clics",
            style: TextStyle(fontSize: 25),
          ),
          Text('$_X', style: TextStyle(fontSize: 25)),
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add), onPressed: () => setState(() => _X++)
              //funsion normal
              // onPressed: () {
              // setState(() {
              //txt="Hola mundo";
              //});
              // },

              ),
          FloatingActionButton(
              child: Icon(Icons.hide_source),
              onPressed: () => setState(() => _X = 0)
              //funsion normal
              //onPressed: () {
              //setState(() {
              //txt="";
              //});
              //},
              ),
          FloatingActionButton(
              child: Icon(Icons.minimize),
              onPressed: () => setState(() => _X--)),
        ],
      ),
    );
  }
}
