import 'package:flutter/material.dart';
import 'package:untitled11/every_tasks.dart';


class Task{
  String nameN ;
  bool done ;
  void Function(bool) cheakBox ;

  Task({this.nameN,
    this.done= false ,
    this.cheakBox});

  void doneChange (){
    done = !done ;
  }
}

class Tasks extends StatefulWidget {

  List<Task> tasks ;
    Tasks(this.tasks);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:widget.tasks.length,
        itemBuilder:
        (context, index) {
      return EveryTask(TaskName: widget.tasks[index].nameN,
        cheak: widget.tasks[index].done,
          cheakBox:  (newValue)
      { setState(() {
        widget.tasks[index].doneChange() ;
      });

      });
    }
    );
  }
}

