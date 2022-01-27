import 'package:flutter/material.dart';

class pictureurl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golf & Picture',
      home: Homepage(),
         
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temple Pictures'),
      ),
      body: ListView(
        children: <Widget>[
          MyWidget("Wat Phra Kaew", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/bangkok-temple-wat-phra-kaew.png"),

          MyWidget("Wat Pho", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/bangkok-temple-wat-pho.png"),

          MyWidget("Wat Arun", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/7702172442_c200b56739_k.jpg"),

          MyWidget("Wat Traimit", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/bangkok-temple-wat-traimit.png"),

          MyWidget("Wat Saket", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/8360011697_4e507b8380_k.jpg"),

          MyWidget("Wat Suthat", "Bangkok",
          "http://3tsll33cscvk11pae33oze51-wpengine.netdna-ssl.com/wp-content/uploads/2014/05/bangkok-temple-wat-suthat.png"),

          MyWidget("Wat Bowonniwet", "Bangkok",
          "https://www.renown-travel.com/images/wat-benchamabophit-l.jpg"),

          MyWidget("Wat Ratchabopit", "Bangkok",
          "https://firebasestorage.googleapis.com/v0/b/helloworld-golf202005021146.appspot.com/o/%E0%B8%9E%E0%B8%A3%E0%B8%B0%E0%B8%9E%E0%B8%B8%E0%B8%97%E0%B8%98%E0%B8%AD%E0%B8%B1%E0%B8%87%E0%B8%84%E0%B8%B5%E0%B8%A3%E0%B8%AA.PNG?alt=media&token=354de952-e5fb-4c73-9c4b-91600dcaa8fa"),

        ]
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String _text1;
  final String _text2;
  final String _imageUrl;
  const MyWidget(
    this._text1,
    this._text2,
    this._imageUrl, {
    Key key,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(image: NetworkImage(_imageUrl))),
            ),
          ),
          Text(
            _text1,
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment(1, 0),
              child: Text(
                _text2,
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}