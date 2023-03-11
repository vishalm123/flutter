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
      home: const MyHomePage(title: 'Flutter code for Gridview.extend'),
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
  var arrColor = [
  Colors.red,
  Colors.black,
  Colors.green,
  Colors.indigoAccent,
  Colors.orange,
  Colors.lightBlue,
  Colors.blueAccent,
  Colors.deepOrange
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body:GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
              ),
      itemBuilder: (context, index) {
        return Container(
          color: arrColor[index],
        );
    },itemCount:arrColor.length
    ),
    );
  }
}
