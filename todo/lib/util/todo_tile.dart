import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Checkbox(activeColor: Colors.grey.shade900,
              value: taskCompleted, onChanged: onChanged),
            Text(taskName,
            style: TextStyle(decoration:taskCompleted==true? TextDecoration.lineThrough:TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}
