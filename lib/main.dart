import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './chatScreen.dart';

main() => runApp(MyApp());

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.indigo,
  accentColor: Colors.red[400],
);

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Friendlychat",
      theme: defaultTargetPlatform == TargetPlatform.iOS //new
          ? kIOSTheme //new
          : kDefaultTheme, //new
      home: new ChatScreen(),
    );
  }
}
