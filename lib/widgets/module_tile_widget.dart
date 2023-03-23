import 'package:flutter/material.dart';

class ModuleTileWidget extends StatelessWidget {
  const ModuleTileWidget({
    Key? key,
    required this.moduleName,
    required this.isDone,
    required this.onClick,
  }) : super(key: key);

  final String moduleName;
  final bool isDone;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(moduleName),
      trailing: isDone
          ? const Icon(Icons.done)
          : ElevatedButton(onPressed: onClick, child: const Text('Done')),
    );
  }
}
