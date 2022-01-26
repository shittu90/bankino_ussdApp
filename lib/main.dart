//@dart=2.9
import 'package:flutter/material.dart';
import 'package:ussd_app/views/home.dart';

void main() {
  runApp(BankinoApp());
}

class BankinoApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bankino USSD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
