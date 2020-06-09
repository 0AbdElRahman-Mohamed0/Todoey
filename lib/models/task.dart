import 'package:flutter/cupertino.dart';

class Task {
  Task({@required this.name});
  final String name;
  bool isDone = false;

  void toggleDone() {
    isDone = !isDone;
  }
}
