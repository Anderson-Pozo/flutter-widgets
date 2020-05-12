import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp')
      ),
      body: ListView(
        children: _crearItemscorta()
      ),
    );
  }

  List<Widget> _crearItems(){

    final _estiloTexto = TextStyle(fontSize: 20, color: Colors.black);

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      
      final tempWidget = ListTile(
        title: Text(opt, style: _estiloTexto,),
      );

      lista..add(tempWidget)
           ..add(Divider(
             color: Colors.blueAccent,
           )); 

    }

    return lista;
  }

  List<Widget> _crearItemscorta(){

    final _estiloTexto = TextStyle(fontSize: 20, color: Colors.black);
    
    return  opciones.map((item){
      return Column(
        children: <Widget>[
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text(item + '!', style: _estiloTexto, ),
          subtitle: Text('subtitle'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){},
        ),
        Divider(
          color: Colors.blueAccent,
        ),
        ],
      );
    }).toList(); 
  }


}