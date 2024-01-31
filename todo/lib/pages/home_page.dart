import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _controller = TextEditingController();

  List toDoList = [
    ['Make Tutorial', false],
    ['Do Exercise', false]
  ];
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
void saveNewTask(){
  setState(() {
    toDoList.add([_controller.text,false]);
    Navigator.pop(context);
    _controller.clear();});
}
  void createNewTask() {
    setState(() {
      showDialog(
          context: context,
          builder: (ctx) => DialogBox(onSave: saveNewTask,onCancel: ()=>Navigator.of(context),
                controller: _controller,
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('TO DO'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          backgroundColor: Colors.white,
          child: const Icon(Icons.add)),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) => ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index)),
      ),
    );
  }
}
