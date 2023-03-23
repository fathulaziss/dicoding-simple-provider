import 'package:dicoding_simple_setstate/provider/module_done_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModuleDonePage extends StatelessWidget {
  const ModuleDonePage({Key? key}) : super(key: key);

  static const routeName = '/module_done';

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<ModuleDoneProvider>(context, listen: false).doneModuleList;

    return Scaffold(
      appBar: AppBar(title: const Text('Done Module List')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
        itemCount: doneModuleList.length,
      ),
    );
  }
}
