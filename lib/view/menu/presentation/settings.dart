import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validator/form_validator.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:temppi_app/provider/theme/theme_provider.dart';

import '../../../repository/settings_repository.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({super.key});

  @override
  ConsumerState<Settings> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final url = ref.watch(baseUrlProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) =>
                    ref.read(themeModeStateProvider.notifier).toggle(value),
                initialValue:
                    ref.watch(themeModeStateProvider) == ThemeMode.dark,
                leading: const Icon(Icons.mode_night),
                title: const Text('Change theme'),
              ),
              SettingsTile.navigation(
                  leading: const Icon(Icons
                      .signal_wifi_statusbar_connected_no_internet_4_sharp),
                  title: const Text('Server URL'),
                  onPressed: (c) => _displayTextInputDialog(c),
                  value: Text(url)),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('TextField in Dialog'),
          content: TextFormField(
            controller: _textFieldController,
            validator: ValidationBuilder().url().build(),
            decoration: const InputDecoration(
                hintText: "Enter a URL (ex: http://localhost:8080)"),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('CANCEL'),
              onPressed: () => Navigator.pop(context)
            ),
            MaterialButton(
              onPressed: _onAlertOk,
              child: const Text('OK')
            ),
          ],
        );
      },
    );
  }

  void _onAlertOk() {
    if (Uri.parse(_textFieldController.text).isAbsolute) {
      ref.read(baseUrlProvider.notifier).updateUrl(_textFieldController.text);
      Navigator.pop(context);
    }
  }

}
