import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Define the list of icon data
  final List<IconData> icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.account_balance,
    Icons.account_circle,
    Icons.add_alert,
    Icons.add_box,
    Icons.add_circle,
    Icons.airplanemode_active,
    Icons.attach_file,
  ];

  // Define the list of icon names
  final List<String> iconNames = [
    'AC Unit',
    'Access Alarm',
    'Access Time',
    'Account Balance',
    'Account Circle',
    'Add Alert',
    'Add Box',
    'Add Circle',
    'Airplane Mode',
    'Attach File',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon List'),
        ),
        body: ListView.builder(
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(icons[index]),
              title: Text(iconNames[index]),
            );
          },
        ),
      ),
    );
  }
}
