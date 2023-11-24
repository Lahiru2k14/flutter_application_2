import 'package:flutter/material.dart';
import 'package:flutter_application_2/grouping_student.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {

  var isNewGroupCreated = false;

  @override
  Widget build(BuildContext context) {
    return isNewGroupCreated ?  Column(children: [  const StudentGrouping(),
    const SizedBox(height: 50,),

    InkWell(onTap: () {
      setState(() {
        isNewGroupCreated = false;
      });
    },
    child: const Text('<Back To Home', style:TextStyle(color: Color.fromARGB(255, 242, 13, 13),fontSize: 24 )),
    
    )],): Column(
      mainAxisSize: MainAxisSize.min,
      
      children: [
      Container(
        margin: const EdgeInsets.only(bottom: 150),
        child: const Text('Welcome to Student Grouping App!',
        textAlign: TextAlign.center, 
        style: TextStyle(color:Color.fromARGB(255, 236, 242, 243),fontSize: 32 ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 250),
        child: TextButton(onPressed: (){
          setState(() {
            isNewGroupCreated =true;
          });
        }, style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        textStyle: const TextStyle(fontSize: 28)),
        child:const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Create New Group'),
        )),
      )
    ],);
  }
}