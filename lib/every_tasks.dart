import 'package:flutter/material.dart' ;



class EveryTask extends StatelessWidget {
 final bool cheak ;
  String TaskName ;
  final void Function(bool) cheakBox ;
 EveryTask({this.cheak ,
   this.TaskName,
 this.cheakBox}) ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TaskName,
      style: TextStyle(
          decoration:  cheak ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
          activeColor: Colors.deepPurple,
        value: cheak,
        onChanged: cheakBox
      ),
    );
  }
}
