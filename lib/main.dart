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
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0.0),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(0, 50)
                        ),
                      ),
                      child: Text('Berita Terbaru'.toUpperCase(), style: TextStyle(color: Colors.black,)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0.0),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(0, 50)
                        ),
                      ),
                      child: Text('Pertandingan Hari Ini'.toUpperCase(), style: TextStyle(color: Colors.black,)),
                    ),
                  ),
                ],
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                    )
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: Text('Costa Mendekat Ke Palmeiras', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                    color: Colors.purpleAccent,
                    child: Text('Transfer', style: TextStyle(color: Colors.black, fontSize: 14.0),),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                            )
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Text('Pique Bilang Wasit Untung-kan Madrid, Koeman Tepok', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14.0),),
                          )
                        ),
                      ],
                    )
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Text('Barcelona Feb 13, 2021', style: TextStyle(color: Colors.black, fontSize: 14.0),),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                            )
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Text('Pique Bilang Wasit Untung-kan Madrid, Koeman Tepok', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14.0),),
                          )
                        ),
                      ],
                    )
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Text('Barcelona Feb 13, 2021', style: TextStyle(color: Colors.black, fontSize: 14.0),),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/images/mendar-bouchali-HHIxGdj9m-Q-unsplash.jpg',),
                            )
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Text('Pique Bilang Wasit Untung-kan Madrid, Koeman Tepok', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14.0),),
                          )
                        ),
                      ],
                    )
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Text('Barcelona Feb 13, 2021', style: TextStyle(color: Colors.black, fontSize: 14.0),),
                  ),
                ],
              )
            ),
            // Container(
            //   color: Colors.black,
            //   alignment: Alignment.bottomCenter,
            //   child: FlutterLogo(size: 50.0),
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