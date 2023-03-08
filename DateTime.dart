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
      title: "Flutter code for showing date and time",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter code for showing date and time'),
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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body:Center(
      child: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Time is ${time.hour}:${time.minute}:${time.second} \n Date:- ${time.day}/${time.month}/${time.year}"),
            ElevatedButton(onPressed: (){
              setState(() {
                
              });
            }, child: Text("Refresh"),
            )
          ]
          ),
      ),
    ) ,
    );
  }
}
