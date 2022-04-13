import '../cubit/app_cubit.dart';
import '../l10n/l10n.dart';
import '../provider/locale_provider.dart';
import 'tree_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<LocaleProvider>(context);

    return Container(
      color: AppCubit.get(context).isDark ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.ramadan,
              style: const TextStyle(
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
            // Button(
            //   child: Text(
            //     Localizations.localeOf(context).languageCode == 'en'
            //         ? 'English'
            //         : 'عربي',
            //     style: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onPressed: () {},
            // ),
            const LanguagePickerWidget(),
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

class LanguagePickerWidget extends StatelessWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<LocaleProvider>(context);
    // final locale = provider.locale;

    return DropDownButton(
      title: Text(
        AppLocalizations.of(context)!.selectLanguage,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      items: L10n.languages.map(
        (locale) {
          return DropDownButtonItem(
            title: Text(L10n.getName(locale.languageCode)),
            onTap: () {
              final provider =
                  Provider.of<LocaleProvider>(context, listen: false);
              provider.setLocale(locale);
              // print(locale);
            },
          );
        },
      ).toList(),
    );
  }
}
