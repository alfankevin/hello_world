import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar (title: Text("Contoh Button, Text, Color")),
        body: Container (
          // Button
          // margin: EdgeInsets.only(top: 5),
          // child: ElevatedButton (
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom (
          //     primary: Colors.red[900],
          //     textStyle: TextStyle (
          //       fontSize: 20,
          //       color: Colors.white,
          //     ),
          //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)
          //   ),
          //   child: Text("Button")
          // ),

          // Text
          // alignment: Alignment.bottomCenter,
          // padding: EdgeInsets.only(left: 20),
          // margin: EdgeInsets.all(20),
          // height: 200,
          // width: 200,
          // alignment: Alignment.topLeft,
          // color: Colors.blueGrey,
          // child: Text (
          //   'Ayo Belajar Flutter',
          //   style: TextStyle (
          //     fontSize: 20,
          //     color: Colors.white
          //   )
          // )

          // Transform and Decoration
          decoration: BoxDecoration (
            image: const DecorationImage (
              image: NetworkImage (
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all (
              color: Colors.black,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 300,
          margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
          transform: Matrix4.rotationZ(-0.1),
        )
      )
    );
  }
}