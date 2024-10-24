import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/login_page.dart';
import 'package:flutter_uts/pages/register_page.dart';
import 'package:flutter_uts/profile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // tampilan pertama yang ditampilakan ketika di run
      initialRoute: '/',
      
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profil' : (context) => ProfilePage(),
      },
    );
  }
}