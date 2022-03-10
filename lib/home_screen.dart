import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/screen_button.dart';
import 'package:untitled11/tasks.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('To do list ',style: TextStyle(
                  fontSize: 50 ,fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
            Icon(Icons.check,size: 40,color: Colors.white,),

          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> tasks =[
    Task(nameN: 'go shopping'),
    Task(nameN: 'read a book'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context, builder: (context) => SingleChildScrollView(
                child: Container(
                child: ScreenButton( (newTask){
                  setState(() {
                    tasks.add(Task(nameN: newTask));
                  });
                })),
              ),

          );


        },
        backgroundColor: Colors.blue[700],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60,left: 20 ,right: 20,bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              Icon(Icons.playlist_add,color: Colors.white,size: 40,),
              SizedBox(width: 20,),
              Text('ToDoList',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            ],
          ),
            SizedBox(height: 20,),
            Text('Tasks',style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Tasks(tasks),
              ),
            )
          ],
        ),
      ),

    );
  }
}

