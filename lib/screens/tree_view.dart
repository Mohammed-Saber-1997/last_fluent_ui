import '../cubit/app_cubit.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'navigation_screen.dart';

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
                      content: const Text(
                        'Level One',
                        style: TextStyle(fontSize: 23),
                      ),
                      children: [
                        TreeViewItem(
                          expanded: false,
                          content: const Text(
                            'Level One' + ' 1',
                            style: TextStyle(fontSize: 20),
                          ),
                          children: [
                            TreeViewItem(
                              expanded: false,
                              content: const Text(
                                'Level Three' + ' 1.1',
                                style: TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 1.1.1',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 1.1.2',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            TreeViewItem(
                              expanded: false,
                              content: const Text(
                                'Level Three' + ' 1.2',
                                style: TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 1.2.1',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 1.2.2',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        TreeViewItem(
                          expanded: false,
                          content: const Text(
                            'Level One' + ' 2',
                            style: TextStyle(fontSize: 20),
                          ),
                          children: [
                            TreeViewItem(
                              expanded: false,
                              content: const Text(
                                'Level Three' + ' 2.1',
                                style: TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 2.1.1',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 2.1.2',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            TreeViewItem(
                              expanded: false,
                              content: const Text(
                                'Level Three' + ' 2.2',
                                style: TextStyle(fontSize: 17),
                              ),
                              children: [
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 2.2.1',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                TreeViewItem(
                                  content: const Text(
                                    'Level Four' + ' 2.2.2',
                                    style: TextStyle(fontSize: 14),
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
