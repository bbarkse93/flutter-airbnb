import 'package:airbnb/components/home/home_header_appbar.dart';
import 'package:airbnb/components/home/home_header_form.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.jpeg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
