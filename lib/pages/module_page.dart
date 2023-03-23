import 'package:dicoding_simple_setstate/pages/module_done_page.dart';
import 'package:dicoding_simple_setstate/widgets/module_list_widget.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  static const routeName = '/module';

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.pushNamed(
                context,
                ModuleDonePage.routeName,
                arguments: doneModuleList,
              );
            },
          ),
        ],
      ),
      body: ModuleListWidget(doneModuleList: doneModuleList),
    );
  }
}
