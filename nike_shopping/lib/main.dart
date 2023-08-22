import 'package:flutter/material.dart';
import 'package:nike_shopping/pages/DetailsPage.dart';
import 'package:nike_shopping/pages/HomePage.dart';
import 'package:nike_shopping/pages/LoginPage.dart';
import 'package:nike_shopping/widget/HomeAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 206, 221, 238),
        
      ),
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "DetailsPage": (context) => DetailsPage(),
      },
    );
  }
}
