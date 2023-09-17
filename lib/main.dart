import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyCustomApp(),
    );
  }
}

class MyCustomApp extends StatefulWidget {
  const MyCustomApp({super.key});

  @override
  State<MyCustomApp> createState() => _MyCustomAppState();
}

class _MyCustomAppState extends State<MyCustomApp> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan suhu Dalam Celcius'
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                ],
                controller: myController,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Suhu dalam Kelvin', style: TextStyle(fontSize: 16),),
                        SizedBox(height: 20),
                        Text('150', style: TextStyle(fontSize: 40),),
                      ],
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Suhu dalam Reamur', style: TextStyle(fontSize: 16),),
                        SizedBox(height: 20),
                        Text('200', style: TextStyle(fontSize: 40),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(myController.text),
                        );
                      },
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 50)
                    )
                  ),
                  child: Text('Konversi Suhu')
                )
              )
            )
          ],
        ),
      )
    );
  }
}