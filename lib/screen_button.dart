import 'package:flutter/material.dart';

class ScreenButton extends StatelessWidget {
  final Function ScreenButtonback ;
  ScreenButton(this.ScreenButtonback);

  @override
  Widget build(BuildContext context) {
    String newTask ;
    return  Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text('Add Task',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTask = newText ;

            },
          ),
          TextButton(
            onPressed: () {
             ScreenButtonback(newTask);
            },
              child: Text('add'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            primary: Colors.white
          ),)
        ],
      ),
    );
  }
}
