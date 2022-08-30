
import 'package:fetchingdata/view/home_screen.dart';
import 'package:fetchingdata/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fetchingdata/controller/provider.dart';
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => DataProvider(),)],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  ));
}
