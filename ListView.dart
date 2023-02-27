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
      home: const MyHomePage(title: 'Dart Program for ListView'),
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
          title: Text('Scrolling One Child'),
        ),
        body:
          Center(
            child:
              ListView(
                
                children: [
                Padding(
                  padding: EdgeInsets.all(8.0), 
                    child: Text("One", style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500),),),
                Padding(
                  padding: EdgeInsets.all(8.0), 
                    child: Text("Two", style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500),),),
                Padding(
                  padding: EdgeInsets.all(8.0), 
                    child: Text("Three", style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500),),),
                Padding(
                  padding: EdgeInsets.all(8.0), 
                    child: Text("Four", style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500),),),
                Padding(
                  padding: EdgeInsets.all(8.0), 
                    child: Text("Five", style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500),),),
                ]
          )
        ) 
    );
  }
}
