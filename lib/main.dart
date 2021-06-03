import 'package:flutter/material.dart';
// import './screens/EcomAppUi.dart';
// import './screens/SecondScreen.dart';
import './screens/UserPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:UserPage(
      )
    );
  }
}
