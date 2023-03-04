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
      home: const MyHomePage(title: 'Dart Program for ListTile'),
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
          title: Text('CircleAvatar in Dart/Flutter'),
        ),
        body:
         Center(
          child: CircleAvatar(
            child: Container(
              width:150,
              height:150,
              child: Column(
                  children:[
                    Container(
                      width:40,
                      height:40,
                      child: Image.asset('assets/images/<your img namme>'),
                    ),
                     Text("Your text",),
                  ]
                )
            ),
            maxRadius:60,
          )
         )
    );
  }
}
