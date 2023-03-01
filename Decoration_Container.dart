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
      home: const MyHomePage(title: 'Dart Program for Container decoration'),
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
          title: Text('Container Decoration in Dart/Flutter'),
        ),
        body:
          Container(
            height: double.infinity,//selecting all height of screen
            width: double.infinity,//selecting all width of screen
            child:Center(
            child:
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 11,
                      color: Colors.grey,
                      spreadRadius: 7,
                    )
                  ]
                ),
              )
        ) 
    )
    );
  }
}
