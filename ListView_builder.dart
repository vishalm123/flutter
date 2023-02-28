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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Dart Program for ListView.builder'),
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
    var arrNames = ["Ram","Ramesh","Raman"];
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder In dart/flutter'),
        ),
        body:
          Center(
            child:
              ListView.builder(itemBuilder: (context,index){
                return Text(arrNames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w300),);
              },
              itemCount: arrNames.length, //to specify length of array
          )
        ) 
    );
  }
}
