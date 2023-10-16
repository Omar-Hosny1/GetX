import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controllers/home_page_controller.dart';
import 'package:test/screens/profile_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          Get.snackbar(
              'Added Successfully', 'Counter Incremented Successfully');
          Get.to(ProfileScreen());
        },
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 250,
            child: Column(children: [
              Obx(
                () => Text(
                  controller.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
