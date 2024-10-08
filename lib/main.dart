import 'package:flutter/material.dart';
import 'package:food_app/ui/pages.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPages(),
        debugShowCheckedModeBanner: false,
    );
  }
}