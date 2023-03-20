import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unit_convertor/IntroPage.dart';
import 'SlaphScreen.dart';
import 'Widgets/DropDown.dart';
import 'Widgets/input.dart';
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
      home: SlaphScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  String dropdownValue = 'Option 1';
  var input = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
    body:
    Column(
      children:[
        Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: TextField(
                controller: input,
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                dropdownValue = newValue!;
                setState(() {
                  print(newValue);
                });
              },
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
        Positioned(
          left: 50,
            child: Text("To")
        ),
        ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return IntroPage();}));
          }, child: Text("Click"))
      ]
    )
    // Column(children: [
    //   Container(
    //     height: 10,
    //   ),
    // // TakeInput(),
    // Row(
    //   children: [
    //     Input(),
    //     DropdownButton<String>(
    //         value: dropdownValue,
    //         onChanged: (String? newValue) {
    //           setState(() {
    //             dropdownValue = newValue!;
    //           });
    //         },
    //         items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
    //             .map<DropdownMenuItem<String>>((String value) {
    //           return DropdownMenuItem<String>(
    //             value: value,
    //             child: Text(value),
    //           );
    //         }).toList(),
    //       ),
    //   ],
    // )
    // ],
    // )
    //  Center(
    //       child: DropdownButton<String>(
    //         value: dropdownValue,
    //         onChanged: (String? newValue) {
    //           setState(() {
    //             dropdownValue = newValue!;
    //           });
    //         },
    //         items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
    //             .map<DropdownMenuItem<String>>((String value) {
    //           return DropdownMenuItem<String>(
    //             value: value,
    //             child: Text(value),
    //           );
    //         }).toList(),
    //       ),
    //     ),



    // Container(
    //       alignment: Alignment.center,
    //       child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Container(
    //               width: 250,
    //               height: 250,
    //               color: Colors.amber,
    //             ),
    //             Text("Hello"),
    //           ],
    //         ),
    //       ),
    //     ),
        
    );
  }
}

class TakeInput extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.amber,
                ),
                Text("Hello"),
              ],
            ),
          ),
        
    );
  }
}
