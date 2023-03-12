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
      title: "Hello",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter code for Wrap widget'),
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
        title: Text(widget.title),
      ),
    body:
    Wrap(
      direction: Axis.horizontal,
      spacing: 11,//vertical spacing for Axis.horizontal
      runSpacing: 11,//horizontal spacing for Axis.horizontal
      children: [
        Container(
          width: 70,
          height: 70,
          color:  Colors.amber,
        ),Container(
          width: 70,
          height: 70,
          color:  Colors.red,
        ),Container(
          width: 70,
          height: 70,
          color:  Colors.green,
        ),Container(
          width: 70,
          height: 70,
          color:  Colors.black,
        ),Container(
          width: 70,
          height: 70,
          color:  Colors.brown,
        ),Container(
          width: 70,
          height: 70,
          color:  Colors.blueGrey,
        ),
      ],
    )       
    );
  }
}
