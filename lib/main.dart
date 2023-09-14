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
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
          backgroundColor: Colors.red,
        ),
        // body: Row(
        // body: Column(
        // body: Stack(
        body: ListView(
        // body: GridView.count(
        //   crossAxisCount: 3,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.all<double>(0.0),
                    ),
                    child: Text('Berita Terbaru'.toUpperCase(), style: TextStyle(color: Colors.black,)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.all<double>(0.0),
                    ),
                    child: Text('Pertandingan Hari Ini'.toUpperCase(), style: TextStyle(color: Colors.black,)),
                  ),
                ),
              ],
              )
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Container(
                    child: Image(
                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    )
                  ),
                  Container(
                    color: Colors.green,
                    alignment: Alignment.bottomCenter,
                    child: FlutterLogo(size: 50.0),
                    height: 75,
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              color: Colors.green,
              alignment: Alignment.bottomCenter,
              child: FlutterLogo(size: 50.0),
              height: 75,
            ),
            // Container(
            //   color: Colors.red,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Dua", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 400,
            //   width: 300,
            // ),
            // Container(
            //   color: Colors.deepPurple,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Tiga", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 200,
            //   width: 200,
            // ),
            // Container(
            //   color: Colors.blue,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Tiga", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 200,
            //   width: 200,
            // ),
            // Container(
            //   color: Colors.green,
            //   alignment: Alignment.bottomCenter,
            //   child: FlutterLogo(size: 50.0)
            // ),
            // Container(
            //   color: Colors.red,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Dua", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 400,
            //   width: 300,
            // ),
            // Container(
            //   color: Colors.deepPurple,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Tiga", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 200,
            //   width: 200,
            // ),
            // Container(
            //   color: Colors.blue,
            //   alignment: Alignment.bottomCenter,
            //   child: Text("Tiga", style: TextStyle(fontSize: 30.0, color: Colors.white)),
            //   height: 200,
            //   width: 200,
            // ),
          ]
        )
      )
    );
  }
}