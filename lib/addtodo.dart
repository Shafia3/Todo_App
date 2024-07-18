
import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({super.key});

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  TextEditingController todoText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add todo:"),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            hintText: "Write your todo here..",
            // labelText: "Username", 
            // icon: Icon(Icons.verified_user),
            
          ),
          // style: TextStyle(
          //   fontWeight: FontWeight.bold,color: Colors.blueAccent,
          // ),
        ),
        ElevatedButton(onPressed: () { 
          print(todoText.text);

          todoText.text = "";
        }, child: Text('Add')),
      ],
    );
  }
}