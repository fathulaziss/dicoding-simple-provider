import 'package:dicoding_simple_setstate/data/module_list_data.dart';
import 'package:dicoding_simple_setstate/provider/module_done_provider.dart';
import 'package:dicoding_simple_setstate/widgets/module_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModuleListWidget extends StatelessWidget {
  const ModuleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: moduleListData.length,
      itemBuilder: (context, index) {
        return Consumer<ModuleDoneProvider>(
          builder: (context, ModuleDoneProvider data, widget) {
            return ModuleTileWidget(
              moduleName: moduleListData[index],
              isDone: data.doneModuleList.contains(moduleListData[index]),
              onClick: () => data.complete(moduleListData[index]),
            );
          },
        );
      },
    );
  }
}
