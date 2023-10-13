import 'package:airbnb/components/home/home_body.dart';
import 'package:airbnb/components/home/home_header.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  runApp(const MyApp());
  await initializeDateFormatting();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            HomeHeader(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
