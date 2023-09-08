import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'Flutter Trial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Trial'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {},
              color: Colors.yellowAccent,
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                // width: 200,
                ),
                Image.network('https://www.petanikode.com/img/flutter/flutter.png'),
                Text(
                  'Belajar Flutter di Petani Kode',
                  style: TextStyle (fontSize: 24, fontFamily: "Serif", height: 2.0)
                ),
                Text('Pembelajaran Flutter untuk Pemula'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network('https://www.petanikode.com/img/flutter/flutter-sqr.png', width: 175,),
                    Image.network('https://www.petanikode.com/img/flutter/flutter-sqr.png', width: 175,),
                  ],
                )
              ]
            )
          )
        )
      )
    );
  }
}