import 'package:get/get.dart';

class Counter {
  final _counter = 0.obs;

  get counter {
    return _counter.value;
  }

  void increment() {
    _counter.value += 1;
  }

  void decrement() {
    _counter.value -= 1;
  }
}
