import 'package:flutter/material.dart';
 
 
class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i0.pngocean.com/files/939/954/383/pocket-mortys-rick-sanchez-morty-smith-computer-icons-deviantart-rick-avatar-blue-vers-icon.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('AP'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: FadeInImage(
            image: NetworkImage('https://cutewallpaper.org/21/rick-and-morty-profile-pictures/Rick-and-morty-Raevelynn-22-playlists-8tracks-radio.png'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}