import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  MyTask({
    @required this.taskName,
    @required this.isChecked,
    @required this.checkboxCallback,
    @required this.longPressCalback,
  });
  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCalback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCalback,
      title: Text(
        taskName,
        style: TextStyle(
          fontSize: 20.0,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
