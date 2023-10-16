import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
