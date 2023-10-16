import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
   Function(BuildContext)? deletFunction;
   TodoTile({super.key,required this.taskname,required this.taskcompleted,required this.onChanged,required this.deletFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Slidable(endActionPane: ActionPane(motion: StretchMotion(),children: [SlidableAction(onPressed: deletFunction,icon: Icons.delete,backgroundColor: Colors.red.shade300,)],),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [Checkbox(activeColor: Colors.black,value: taskcompleted, onChanged: onChanged),
              Text(taskname,style: TextStyle(decoration: taskcompleted? TextDecoration.lineThrough:null),),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurple.shade400),
        ),
      ),
    );
  }
}
