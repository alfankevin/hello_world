import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // int _count = 0;
  const MyApp({super.key});
	@override
	Widget build(BuildContext context) {
		return MaterialApp (
      // Text Widget
		  // home : Text('This is Text Widget',),

      // Image Widget
			// home:Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),),

      // Material Design and Cupertino Design
      // home: Container(
			// 	margin: EdgeInsets.only(top: 30),
			// 	color: Colors.white,
			// 	child: Column(
			// 		children: <Widget>[
			// 			AppBar(title: Text('Contoh Cupertino')),
			// 			CupertinoButton(
			// 				child: Text("Contoh button"),
			// 				onPressed: () {},
			// 			),
			// 			CupertinoActivityIndicator(),
			// 		],
			// 	),
			// ),

      // Button Widget
      // home: Scaffold (
			// 	floatingActionButton:FloatingActionButton (
			// 		onPressed: () {
      //       // Add your onPressed code here!
			// 		},
			// 		child: Icon(Icons.thumb_up),
			// 		backgroundColor: Colors.pink,
			// 	),
			// ),

      // Scaffold Widget
      // home: Scaffold (
      //   appBar: AppBar (
      //     title: Text('Contoh Scaffold'),
      //   ),
      //   body: Center (
      //     child: Text('You have pressed the button times'),
      //   ),
      //   bottomNavigationBar: BottomAppBar (
      //     child: Container (
      //       height: 50.0,
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton (
      //     onPressed: () => 0,
      //     tooltip: 'Increment Counter',
      //     child: Icon(Icons.add),
      //   ),
      //   floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      // ),

      // Dialog Widget
      home: Scaffold (
        body: MyLayout(),
      )

      // Input and Selection Widget
      // home: Scaffold (
      //   appBar: AppBar (
      //     title: Text('Contoh TextField')
      //   ),
      //   body: Container (
      //     margin: EdgeInsets.only(top: 5),
      //     child: TextField (
      //       obscureText: false,
      //       decoration: InputDecoration (
      //         border: OutlineInputBorder(),
      //         labelText: 'Nama',
      //       ),
      //     ),
      //   ),
      // ),

      // Date and Time Pickers
      // home: MyHomePage(title: 'Contoh Date Picker'),
		);
	}
}

// Dialog Widget
class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton (
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton (
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog (
    title: Text("My title",
    style: TextStyle (
      fontWeight: FontWeight.bold
    )),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog (
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
// End Dialog Widget

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Alfan Farchi Al-Hadi\n       2141720084',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
