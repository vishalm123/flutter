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
      title: 'Flutter Learnings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Dart Program for ListTile'),
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
    var arrNames = ['Ram','Rajan','Rangila'];
    return Scaffold(
        appBar: AppBar(
          title: Text('ListTile in Dart/Flutter'),
        ),
        body:
         ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: Text("${index+1}"),
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
         },
         itemCount:arrNames.length,
          separatorBuilder:(context,index){
            return Divider(height:100,thickness:1);
          }
         )
    );
  }
}
