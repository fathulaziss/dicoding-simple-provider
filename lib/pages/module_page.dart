import 'package:dicoding_simple_setstate/pages/module_done_page.dart';
import 'package:dicoding_simple_setstate/widgets/module_list_widget.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({Key? key}) : super(key: key);

  static const routeName = '/module';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.pushNamed(context, ModuleDonePage.routeName);
            },
          ),
        ],
      ),
      body: const ModuleListWidget(),
    );
  }
}
