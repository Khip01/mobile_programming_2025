import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:layout_flutter/models/item.dart';
import 'package:layout_flutter/pages/home_page.dart';
import 'package:layout_flutter/pages/item_page.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) {
        return HomePage();
      },
      routes: [
        GoRoute(
          name: 'detail',
          path: 'detail',
          builder: (context, state) {
            final Item itemArgs = state.extra as Item;
            return ItemPage(itemArgs: itemArgs);
          },
        ),
      ],
    ),
  ],
);

void main() => runApp(
  MaterialApp.router(
    title: 'Flutter layout: Akhmad Aakhif Athallah - 2341720071',
    routerConfig: _router,
    debugShowCheckedModeBanner: false,
  ),
);
