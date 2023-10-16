import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controllers/home_page_controller.dart';
import 'package:test/screens/profile_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HomePageController.to.increment();
        },
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 250,
            child: Column(
              children: [
                GetBuilder<HomePageController>(
                  init: HomePageController(),
                  id: 'text',
                  builder: (controller) => Text(
                    controller.counter.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
