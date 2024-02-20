import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTask extends StatelessWidget {

  final String taskName;
  final bool taskComp;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

   TodoTask({super.key, required this.taskName, required this.taskComp, required this.onChanged, required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8, ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(12),
            
              )
          ]
          ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.cyan.shade200,
        
          ),
          
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
        
                Text(taskName,
                style: TextStyle(
                  decoration: taskComp? TextDecoration.lineThrough : TextDecoration.none
                ),),
        
                Checkbox(value: taskComp, onChanged: onChanged)
        
            ]),
          ),
        ),
      ),
    );
  }
}