import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Flutter Trial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Trial'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: <Widget>[
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
    );
  }
}