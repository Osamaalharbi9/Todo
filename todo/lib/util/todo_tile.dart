import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
   TodoTile({super.key,required this.taskname,required this.taskcompleted,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [Checkbox(activeColor: Colors.black,value: taskcompleted, onChanged: onChanged),
            Text(taskname),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurple.shade400),
      ),
    );
  }
}
