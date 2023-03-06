import 'package:flutter/material.dart';
import 'package:first_app/Ui_helper/ui.dart';
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
        textTheme: TextTheme(
          displayLarge:TextStyle(fontFamily: 'FontMain',fontSize: 40),
          displayMedium: TextStyle(fontFamily: 'FontMain',fontSize: 20)
          ),
      ),
      home: const MyHomePage(title: 'Dart Program for Textfield'),
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
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('TextField in Dart/Flutter'),
        ),
        body:
        Center(
          child:Container(
            width: 300,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                  TextField(//email text field
                    controller:emailText,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2
                        )
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      suffixText: "Suffix text",
                      hintText: "Hint Text ",
                      labelText: "Label Text",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                        )
                      )
              ),
            ),
            Container(
              height: 10,
            ),
            TextField(//password text field
              controller: passwordText,
              obscureText: true,
              decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                )
              ), 
            ),
            ElevatedButton(onPressed: (
            ){
              String uEmail = emailText.text.toString();
              String uPass = passwordText.text.toString();
              print("the email is $uEmail and password is $uPass");
            }, 
            child: const Text("Send")
            )
          ]
        )
        )
      )
    );
  }
}
