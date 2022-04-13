import 'package:fluent_ui/fluent_ui.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(),
      pane: NavigationPane(
        selected: currentPage,
        onChanged: (i) => setState(
          () {
            currentPage = i;
            print(currentPage);
          },
        ),
        // displayMode: PaneDisplayMode.top,
        items: <NavigationPaneItem>[
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: const Text('Home'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.fabric_folder),
            title: const Text('Files'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
          ),
        ],
      ),
      content: NavigationBody(
        index: currentPage,
        children: const <Widget>[
          Center(child: Text('Home')),
          Center(child: Text('Files')),
          Center(child: Text('Settings')),
        ],
      ),
    );
  }
}
