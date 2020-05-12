import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Subtítulo de la tarjeta aasdsadasdqwqwegerhwefewfewfew'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(){

    final card = Container(
      // elevation: 10.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www3.assets.heroku.com/assets/wallpapers/electric-pride/screen-75384c8d651992e001f555aa51b4f2015bdd1deadb1ab4780572183a9e2d32a6.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www3.assets.heroku.com/assets/wallpapers/electric-pride/screen-75384c8d651992e001f555aa51b4f2015bdd1deadb1ab4780572183a9e2d32a6.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Este es un título de la imagen')
          )
        ],
      ),
    );

    return Container(
      // child: card,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );
  }

}