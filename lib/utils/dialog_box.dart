// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:hive_example/utils/Button.dart';

class DialogBox extends StatelessWidget {
  final  controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    Key? key,
    required this.onSave,
    required this.onCancel, 
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyan.shade50,
      content: Container(
        height: 120,
        child:  Column(
          children: [
             TextField(
           controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "create new Task",
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                // save button
                Button(text: "Save", onPressed: onSave),
                SizedBox(width: 5,),

                 /// Cancel button
                Button(text: "Cancel", onPressed: onCancel ),
              ],
              
            )
          ],
        ),

      ),
    );
  }
}
