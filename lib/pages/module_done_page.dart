import 'package:flutter/material.dart';

class ModuleDonePage extends StatelessWidget {
  const ModuleDonePage({
    Key? key,
    required this.doneModuleList,
  }) : super(key: key);

  final List<String> doneModuleList;

  static const routeName = '/module_done';

  @override
  Widget build(BuildContext context) {
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
