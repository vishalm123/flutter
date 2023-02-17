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
        body: Container(
          height: 500,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //To Spread all elements in equal space
            children: <Text>[ //<Text> to specify that here all children will be of Text widget 
                              //<Text> is optional
            Text("Yo1"),
            Text("Yo2"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo3"),
            Text("Yo4"),
          ],
          ),
        )
    );
  }
}
