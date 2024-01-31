import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
   DialogBox({super.key, required this.controller,required this.onSave,required this.onCancel});
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade200,
      actions: [
        SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  label: Text('Add a new task'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(text: 'Cancel', onPressed: onCancel),
            const SizedBox(
              width: 20,
            ),
            MyButton(text: 'Save', onPressed: onSave)
          ],
        )
      ],
    );
  }
}
