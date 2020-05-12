import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Row(
        children: <Widget>[
          _crearCuadrado(Colors.red),
          Expanded(
            child: _crearCuadrado(Colors.green),
          ),
          Expanded(
            flex: 2,
            child: _crearCuadrado(Colors.blue),
          ),
          _crearCuadrado(Colors.pink)
        ],
      ),
    );
  }

  Widget _crearCuadrado(Color color) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 20, horizontal: 20),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: color
      ),
    );
  }
}