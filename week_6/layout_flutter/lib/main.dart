import 'package:flutter/material.dart';
import 'package:layout_flutter/pages/home_page.dart';
import 'package:layout_flutter/pages/item_page.dart';

void main() => runApp(
    MaterialApp(
      title: 'Flutter layout: Akhmad Aakhif Athallah - 2341720071',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
      debugShowCheckedModeBanner: false,
    )
);
