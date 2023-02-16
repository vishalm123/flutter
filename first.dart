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
      home: const MyHomePage(title: 'hola yo boy'),
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
        title: Text('hii'),
      ),
      body:Center(child: Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child:const Center( child: Text("Hello Developers",style: TextStyle(
            fontSize:25,
            fontFamily: "Times new roman",
            color: Color.fromRGBO(255,255,51,10),
            fontWeight:FontWeight.w800,
            backgroundColor: Colors.red  
          ),)),
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
