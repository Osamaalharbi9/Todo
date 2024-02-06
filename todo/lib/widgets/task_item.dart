import 'package:flutter/material.dart';
import 'package:todo/common/colors.dart';
import 'package:todo/common/responsive.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: Responsive.screenHeight(context)/20,width: Responsive.screenWidth(context)/20,color: kWhiteColor,child: const Text('data'),);
  }
}