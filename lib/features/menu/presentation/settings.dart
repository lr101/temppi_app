import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validator/form_validator.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:temppi_app/provider/language/language.dart';
import 'package:temppi_app/provider/theme/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';

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
    final currentLocale = ref.watch(languageProvider);
    final url = ref.watch(baseUrlProvider);
    return Scaffold(
      appBar: AppBar(title: Text(tr('settings_title'))),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(tr('common')),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: Text(tr('language')),
                value: Text(currentLocale == const Locale('en') ? 'English' : 'Deutsch'),
                onPressed: (context) => _showLanguageDialog(context),
              ),
              SettingsTile.switchTile(
                onToggle: (value) =>
                    ref.read(themeModeStateProvider.notifier).toggle(value),
                initialValue:
                ref.watch(themeModeStateProvider) == ThemeMode.dark,
                leading: const Icon(Icons.mode_night),
                title: Text(tr('change_theme')),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons
                    .signal_wifi_statusbar_connected_no_internet_4_sharp),
                title: Text(tr('server_url')),
                onPressed: (c) => _displayTextInputDialog(c),
                value: Text(url),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showLanguageDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(tr('select_language')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: supportedLocales.map((e) => ListTile(title: Text(e.languageCode),
              onTap: () {
                _changeLanguage(context, e);
              },)).toList()
          ),
        );
      },
    );
  }

  // Method to change the app language
  void _changeLanguage(BuildContext context, Locale locale) {
    ref.read(languageProvider.notifier).toggle(locale); // Update the language
    context.setLocale(locale); // Update locale in the app
    Navigator.pop(context); // Close the dialog
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(tr('dialog_title')),
          content: TextFormField(
            controller: _textFieldController,
            validator: ValidationBuilder().url().build(),
            decoration: InputDecoration(
              hintText: tr('enter_url_hint'),
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: Text(tr('cancel')),
              onPressed: () => Navigator.pop(context),
            ),
            MaterialButton(
              onPressed: _onAlertOk,
              child: Text(tr('ok')),
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
