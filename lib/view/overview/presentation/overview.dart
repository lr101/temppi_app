import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temppi_app/view/menu/presentation/settings.dart';
import 'package:temppi_app/view/overview/sub_widgets/drag_tile.dart';

import '../provider/drag_item_provider.dart';

class Overview extends ConsumerStatefulWidget {
  const Overview({super.key});

  @override
  ConsumerState<Overview> createState() => _OverviewState();
}

class _OverviewState extends ConsumerState<Overview> {
  @override
  Widget build(BuildContext context) {
    final list = ref.watch(dragItemProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Temppi"),
        actions: [
          IconButton(
            onPressed: _onSettingsPressed,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ReorderableListView(
        onReorder: _onListReorder,
        children: list
            .asMap()
            .map((index, value) => MapEntry(index,
                DragTile(key: Key('$index'), sensorDto: value, index: index)))
            .values
            .toList(),
      ),
    );
  }

  void _onSettingsPressed() => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Settings())
  );

  void _onListReorder(int oldListIndex, int newListIndex) {
    final list = ref.read(dragItemProvider);
    if (oldListIndex < newListIndex) {
      newListIndex -= 1;
    }
    var movedList = list.removeAt(oldListIndex);
    list.insert(newListIndex, movedList);
    ref.read(dragItemProvider.notifier).update(list);
  }
}
