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
        textTheme: TextTheme(//headline1 and subtitle1 are deprecated
          //use alternative which are displayLarge and displayMedium
          displayLarge:TextStyle(fontFamily: 'FontMain',fontSize: 40),
          displayMedium: TextStyle(fontFamily: 'FontMain',fontSize: 20)
          ),
      ),
      home: const MyHomePage(title: 'Dart Program for Theme Management'),
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
          title: Text('Themes in Dart/Flutter'),
        ),
        body:
        Column(children: [
         Text("Hello Devs 1",style: Theme.of(context).textTheme.displayLarge),
         Text("Hello Devs 2",style: Theme.of(context).textTheme.displayMedium),
         Text("Hello Devs 3",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red)),//copyWith helps to extend the 
                                                                                            //predefined theme and add any extra style to widget
         Text("Hello Devs 4",style: Theme.of(context).textTheme.displayMedium),

        ],
        )
    );
  }
}
