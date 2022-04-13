import 'package:flutter_localizations/flutter_localizations.dart';
import 'cubit/app_cubit.dart';
import 'l10n/l10n.dart';
import 'provider/locale_provider.dart';
import 'screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (context) => LocaleProvider(),
            builder: (context, child) {
              final provider = Provider.of<LocaleProvider>(context);

              return FluentApp(
                debugShowCheckedModeBanner: false,
                locale: provider.locale,
                supportedLocales: L10n.languages,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  DefaultFluentLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                theme: ThemeData(
                  // textTheme: TextTheme(
                  //   bodyText1: TextStyle(color: Colors.black),
                  // ),
                  brightness: Brightness.light,
                  accentColor: Colors.blue,
                  scaffoldBackgroundColor: Colors.white,
                ),
                darkTheme: ThemeData(
                  // textTheme: TextTheme(
                  //   bodyText1: TextStyle(color: Colors.white),
                  // ),
                  brightness: Brightness.dark,
                  accentColor: Colors.green,
                  scaffoldBackgroundColor: Colors.black,
                ),
                themeMode: AppCubit.get(context).isDark
                    ? ThemeMode.dark
                    : ThemeMode.light,
                home: const HomeScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
