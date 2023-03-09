import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    body:Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Date",style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: () async{
              DateTime? datePicked = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(), 
                firstDate: DateTime.now(), 
                lastDate: DateTime(2024)
              );
            }, child: Text("Choose")),
            Text("Select Time"),
            ElevatedButton(onPressed: () async{
              TimeOfDay? pickedTime = await showTimePicker(context: context,
               initialTime: TimeOfDay.now(),
               initialEntryMode: TimePickerEntryMode.dial
               ); 
              if(pickedTime != null) {
                print("time picked is $pickedTime");
              }
            }
            , child: Text("Choose"))
          ],
        )
    )
    );
  }
}
