import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),  //From where we have to take the data and provide it to required places.
          child: MaterialApp(
        home:
            TasksScreen(), //This will be the first screen that will be displayed.
      ),
    );
  }
}
