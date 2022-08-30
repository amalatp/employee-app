import 'package:flutter/material.dart';
import 'package:fetchingdata/view/home_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(
        const Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(209, 45, 45, 1),
      child: Center(
        child: Text(
          "Logo with name",
          style: TextStyle(
            color: Colors.white,fontSize: 18,decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}