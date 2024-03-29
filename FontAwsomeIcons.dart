import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      home: const MyHomePage(title: 'Flutter code for Using icons from fontawsome'),
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
    Row(
      mainAxisAlignment: MainAxisAlignment.center,

    children:[
        Center(
          child:Icon(
            Icons.play_circle,
            size: 50,
            color:Colors.blue
        )
      ),
      SizedBox(
        width:11
      ),
      FaIcon(
        FontAwesomeIcons.amazon,
        size: 110,
      )
      ]
    )       
    );
  }
}
