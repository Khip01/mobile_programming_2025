import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/date_and_time_widget.dart';
import 'package:hello_world/basic_widgets/dialog_widget.dart';
import 'package:hello_world/basic_widgets/input_widget.dart';
import 'package:hello_world/basic_widgets/scaffold_widget.dart';

import 'package:hello_world/basic_widgets/image_widget.dart';
import 'package:hello_world/basic_widgets/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
    // ----- Test MyLayout Widget (Dialog) -----
    // return MaterialApp(
    //   home: Scaffold(
    //     body: MyLayout(),
    //   ),
    // );
    // ----- Test Input dan Selection Widget -----
    // return InputWidget();
    // ----- Test Date and Time Pickers -----
    return MaterialApp(
      title: 'Flutter Date and Time Pickers',
      home: const DateAndTimePickers(title: 'Flutter Date and Time Pickers'),
    );
  }
}

