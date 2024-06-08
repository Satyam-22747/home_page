import 'package:flutter/material.dart';
import 'package:home_page/view/FirstPage.dart/firstPage.dart';
import 'package:home_page/view/LoginPage/loginpage.dart';
import 'package:home_page/view/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 161, 127, 41)),
        useMaterial3: true,
      ),
      home: firstPage(),
    );
  }
}
