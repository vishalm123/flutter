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
        textTheme: TextTheme(
          displayLarge:TextStyle(fontFamily: 'FontMain',fontSize: 40),
          displayMedium: TextStyle(fontFamily: 'FontMain',fontSize: 20)
          ),
      ),
      home: const MyHomePage(title: 'Dart Program for Card widget'),
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
          title: Text('Card Widget in Dart/Flutter'),
        ),
        body:
        Center(
        child: Card(
            elevation: 11,
            shadowColor: Colors.blue,
            child: 
              Text("Hello world",style: TextStyle(fontSize: 31),),
          )
        )
    );
  }
}
