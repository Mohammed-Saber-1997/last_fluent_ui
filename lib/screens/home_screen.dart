import '../cubit/app_cubit.dart';
import 'tree_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppCubit.get(context).isDark ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '\uD83C\uDF1C  Ramadan Kareem  \uD83C\uDF1B',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: Text(
                AppCubit.get(context).isDark ? 'Dark Mode' : 'Light Mode',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () => AppCubit.get(context).changeAppMode(),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: Text(
                Localizations.localeOf(context).languageCode == 'en'
                    ? 'English'
                    : 'عربي',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: const Text(
                'Go To TreeView Screen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  FluentPageRoute(
                    builder: (context) => const TreeViewScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
