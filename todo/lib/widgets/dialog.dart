import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          children: [
            TextField(),
            OutlinedButton(onPressed: () {}, child: null)
          ],
        )
      ],
    );
  }
}
