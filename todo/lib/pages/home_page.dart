import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList=[
  ["Make Tutorial",false],
  ["Do Exercise",false]
  ];
  void checkBoxChanged(bool? value,int index,){setState(() {
    toDoList[index][1]=!toDoList[index][1];
  });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(elevation: 0,
        title: const Center(child:  Text("TO DO")),
      ),body: ListView.builder(itemCount: toDoList.length,
        itemBuilder: ( (context, index){return TodoTile(taskname: toDoList[index][0], taskcompleted: toDoList[index][1], onChanged: (value) => checkBoxChanged(value,index),);}),
      ),
    );
  }
}
