import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learnings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Dart Program for Adding Padding and Margin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Margin and Padding in Dart/Flutter'),
        ),
        body:
         Container(
          margin: EdgeInsets.all(14),
          color: Colors.blue,
          child:
            const Padding( 
              // padding: EdgeInsets.only(left: 14,top: 14), // specify where we want the padding
              padding: EdgeInsets.all(14), // For adding padding to all directions
              child: Text("Hello Developers ",style: TextStyle(fontSize: 21),)
            ) 
        )
    );
  }
}
