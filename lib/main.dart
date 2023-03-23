import 'package:dicoding_simple_setstate/pages/module_done_page.dart';
import 'package:dicoding_simple_setstate/pages/module_page.dart';
import 'package:dicoding_simple_setstate/provider/module_done_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModuleDoneProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: ModulePage.routeName,
        routes: {
          ModulePage.routeName: (context) => const ModulePage(),
          ModuleDonePage.routeName: (context) => const ModuleDonePage(),
        },
      ),
    );
  }
}
