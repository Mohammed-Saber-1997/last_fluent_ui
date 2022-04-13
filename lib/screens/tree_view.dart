import '../cubit/app_cubit.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'navigation_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TreeViewScreen extends StatelessWidget {
  const TreeViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppCubit.get(context).isDark ? Colors.black : Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    FluentIcons.back,
                    size: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TreeView(
                  items: [
                    TreeViewItem(
                      expanded: false,
                      content: Text(
                        AppLocalizations.of(context)!.levelOne,
                        style: const TextStyle(fontSize: 23),
                      ),
                      children: [
                        TreeViewItem(
                          expanded: false,
                          content: Text(
                            AppLocalizations.of(context)!.levelTwo + ' 1',
                            style: const TextStyle(fontSize: 20),
                          ),
                          children: [
                            TreeViewItem(
                              expanded: false,
                              content: Text(
                                AppLocalizations.of(context)!.levelThree +
                                    ' 1.1',
                                style: const TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 1.1.1',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 1.1.2',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            TreeViewItem(
                              expanded: false,
                              content: Text(
                                AppLocalizations.of(context)!.levelThree +
                                    ' 1.2',
                                style: const TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 1.2.1',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 1.2.2',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        TreeViewItem(
                          expanded: false,
                          content: Text(
                            AppLocalizations.of(context)!.levelTwo + ' 2',
                            style: const TextStyle(fontSize: 20),
                          ),
                          children: [
                            TreeViewItem(
                              expanded: false,
                              content: Text(
                                AppLocalizations.of(context)!.levelThree +
                                    ' 2.1',
                                style: const TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 2.1.1',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 2.1.2',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            TreeViewItem(
                              expanded: false,
                              content: Text(
                                AppLocalizations.of(context)!.levelThree +
                                    ' 2.2',
                                style: const TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 2.2.1',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: Text(
                                    AppLocalizations.of(context)!.levelFour +
                                        ' 2.2.2',
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Button(
                  child: const Text(
                    'Go To Navigation Screen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      FluentPageRoute(
                        builder: (context) => const NavigationScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
