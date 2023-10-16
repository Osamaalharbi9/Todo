import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final TextEditingController _controller = TextEditingController();

//
class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false]
  ]; 
  void checkBoxChanged(
    bool? value,
    int index,
  ) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {

        toDoList.add([_controller.text, false]);
        Navigator.pop(context);
        _controller.clear();
      
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            onSaved: saveNewTask,
            onCancel: () {
              Navigator.pop(context);
            },
            controller: _controller,
          );
        });
  }
  void deletTask(int index){setState(() {
    toDoList.removeAt(index);
  });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text("TO DO")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: ((context, index) {
          return TodoTile(deletFunction: (context) => deletTask(index),
            taskname: toDoList[index][0],
            taskcompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }),
      ),
    );
  }
}
