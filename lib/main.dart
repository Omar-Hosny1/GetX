import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controllers/counter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Counter();
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Expanded(
                  child: Obx(
                    () => Text(
                      counter.counter.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              ElevatedButton(
                onPressed: counter.increment,
                child: Text("increment"),
              ),
              ElevatedButton(
                onPressed: counter.decrement,
                child: Text("decrement"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
