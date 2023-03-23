// ignore_for_file: cast_nullable_to_non_nullable

import 'package:dicoding_simple_setstate/pages/module_done_page.dart';
import 'package:dicoding_simple_setstate/pages/module_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ModulePage.routeName,
      routes: {
        ModulePage.routeName: (context) => const ModulePage(),
        ModuleDonePage.routeName: (context) => ModuleDonePage(
              doneModuleList:
                  ModalRoute.of(context)?.settings.arguments as List<String>,
            ),
      },
    );
  }
}
