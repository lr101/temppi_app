import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/api.dart';
import 'package:temppi_app/provider/api_client/api_client_provider.dart';
import 'package:temppi_app/provider/theme/theme_provider.dart';
import 'package:temppi_app/features/display/presentation/display.dart';

class DragTile extends ConsumerWidget {
  const DragTile({super.key, required this.sensorDto, required this.index});

  final SensorDto sensorDto;

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme =
        ref.watch(themeModeStateProvider.notifier).getTheme().colorScheme;
    final Color oddItemColor = colorScheme.secondary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.secondary.withOpacity(0.15);

    return GestureDetector(
      onTap: () => _route(context),
      child: ListTile(
        tileColor: (index.isOdd ? oddItemColor : evenItemColor),
        style: ListTileStyle.list,
        key: Key('${sensorDto.sensorId}'),
        title: Text('${sensorDto.sensorNick}'),
        trailing: FutureBuilder(
            future: _loudEntries(ref),
            builder: (context, snapshot) => Text(
                  "${snapshot.hasData ? snapshot.data : "..."}",
                  style: const TextStyle(fontSize: 15),
                )),
      ),
    );
  }

  Future<String> _loudEntries(WidgetRef ref) async {
    final entries = await ref.watch(sensorEntriesApiProvider).getEntries(
        sensorDto.sensorId!,
        date2: DateTime.now().subtract(const Duration(minutes: 10)),
        limit: 1);
    if (entries != null && entries.isNotEmpty) {
      return "${entries[0].value}${sensorDto.sensorType?.description}";
    } else {
      return "---";
    }
  }

  void _route(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Display(sensorDto)),
    );
  }
}
