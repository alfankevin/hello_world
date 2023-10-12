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
      title: 'YouTube',
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube'),
          backgroundColor: Color.fromARGB(200, 200, 20, 20),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Berita Terbaru'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          minimumSize: MaterialStateProperty.all(Size(0, 50)),
                        ),
                      )
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Pertandingan Hari Ini'.toUpperCase(),
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          minimumSize: MaterialStateProperty.all(Size(0, 50)),
                        ),
                      )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple
                    )
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: double.infinity,
                        color: Colors.white,
                        child: Text('Costa Mendekat Ke Palmeiras',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                        width: double.infinity,
                        color: Colors.purpleAccent,
                        child: Text('Transfer',
                          style: TextStyle(
                            color: Colors.black, fontSize: 14.0
                          ),
                        ),
                      ),
                    ],
                  )
                )
              ],
            )
          )
        )
      )
    );
  }
}