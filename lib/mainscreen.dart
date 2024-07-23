import 'package:flutter/material.dart';
import 'package:to_do_app/addtodo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  String text ="Simple text";

  void changeText({required String todoText}){
setState(() {
  text="$todoText";
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('Drawer Data'),
      ),
      appBar: AppBar(
        title: Text('Todo App'),
        centerTitle: true,
        actions: [
          InkWell(
            //for the sound of tapping on icon
            enableFeedback: false,
            splashColor: Colors.transparent, 
            //highlight clr for the turn off for  greyish shade apper on clicking 
            // highlightColor: Colors.transparent,
            onTap: () {
             showModalBottomSheet(
              
              // backgroundColor: Color.fromARGB(255, 205, 203, 203),
              context: context,
               builder: (context){
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Container(
                    padding: EdgeInsets.all(20),
                  height: 200,
                  child: AddToDo(changeText: changeText),
                  ),
                );
               });
            },
            child: Padding(padding: const EdgeInsets.all(8),
         

            child: Icon(
              Icons.add, 
              // color: Colors.red,
              // size: 35,
            ),
          )
          )
        ],
      ),
      body: Container(
        child: Text("$text"),
      ),
    
    );
  }
}