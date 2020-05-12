import 'package:flutter/material.dart';

 
 
class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Hola'),
          color: Colors.lightBlue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Botón para volver
        child: Icon(Icons.backspace),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0) ),
          title: Text('Alerta por subnormal'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el cuerpo de la alerta'),
              SizedBox(height: 10.0),
              FlutterLogo(size: 100.0, style: FlutterLogoStyle.horizontal)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Aceptar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );

  }

}