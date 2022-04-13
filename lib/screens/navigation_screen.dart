import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: NavigationView(
        pane: NavigationPane(
          selected: currentPage,
          onChanged: (i) => setState(
            () {
              currentPage = i;
              print(currentPage);
            },
          ), // displayMode: PaneDisplayMode.top,
          items: <NavigationPaneItem>[
            PaneItem(
              icon: const Icon(FluentIcons.home),
              title: Text(AppLocalizations.of(context)!.home),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.fabric_folder),
              title: Text(AppLocalizations.of(context)!.files),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              title: Text(AppLocalizations.of(context)!.settings),
            ),
          ],
        ),
        content: NavigationBody(
          index: currentPage,
          children: <Widget>[
            Center(child: Text(AppLocalizations.of(context)!.home)),
            Center(child: Text(AppLocalizations.of(context)!.files)),
            Center(child: Text(AppLocalizations.of(context)!.settings)),
          ],
        ),
      ),
    );
  }
}
