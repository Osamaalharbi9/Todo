import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;
   DialogBox({super.key,required this.controller,required this.onCancel,required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10,
      content: Container(
        height: 120,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(controller: controller,
              decoration: InputDecoration(
                  hintText: "Add a new  task",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: "Save", onPressed: onSaved),
                const SizedBox(width: 20,),
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple.shade200,
    );
  }
}
