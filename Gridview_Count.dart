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
      home: const MyHomePage(title: 'Flutter code for Gridview.count'),
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
    body:GridView.count(
      crossAxisCount: 3,//specify number of columns
      crossAxisSpacing: 11,//specify space between two container columnwise
      mainAxisSpacing: 11,//specify space between two container row-wise
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.black,),
        Container(color: Colors.green,),
        Container(color: Colors.indigoAccent,),
        Container(color: Colors.orange,),
        Container(color: Colors.lightBlue,),
        Container(color: Colors.blueAccent.shade100,),
        Container(color: Colors.deepOrange,),
      ],
    ),
    );
  }
}
