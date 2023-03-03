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
      home: const MyHomePage(title: 'Dart Program for Expanded widget'),
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
          title: Text('Expanded widget in Dart/Flutter'),
        ),
        body:
        Column(
          children: [
            Expanded( //expanded widget covers the remaining or available area
              flex:2,
              child:
              (
                Container(
                width: 50,
                color: Colors.red,
                )
              )
            ),
            Expanded( //expanded widget covers the remaining or available area
              flex: 4,
              child:
              (
                Container(
                height: 100,
                width: 50,
                color: Colors.orange,
                )
              )
            ),
            Expanded( //expanded widget covers the remaining or available area
              flex: 4,
              child:
              (
                Container(
                height: 100,
                width: 50,
                color: Colors.blueGrey,
                )
              )
            ),
            Expanded( //expanded widget covers the remaining or available area
              flex: 3,
              child:
              (
                Container(
                height: 100,
                width: 50,
                color: Colors.green,
                )
              )
            )
          ],
        )
    );
  }
}
