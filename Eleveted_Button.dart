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
    int i=0,j=0;
    return Scaffold(
      appBar: AppBar(
        title: Text('hii'),
      ),
      body: ElevatedButton(child: Text("Yo"),
      onPressed: (){
        print("Text button tapped ${i}");
        i++;
      },
      onLongPress: (){
        
        print("Text button long pressed ${j}");
        j++;
      },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
