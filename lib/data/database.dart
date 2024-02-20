import 'package:hive/hive.dart';

class DataBase{
  List todoList = [

  ];

  // reference box
  final _myBox = Hive.box('mybox');

  // if first ever open this app
  void createInitialData() {
    todoList = [
      ["my diet", false],
       ["my Protien", false],

    ];
  }

  // load data from database
  void loadData (){
    todoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase (){
    _myBox.put("TODOLIST", todoList);
  }

}