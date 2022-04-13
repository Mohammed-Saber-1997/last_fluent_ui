import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isArabic = false;
  void changeAppLanguage() {
    isArabic = !isArabic;
    emit(AppChangeLanguageState());
  }

  bool isDark = false;
  void changeAppMode() {
    isDark = !isDark;
    emit(AppChangeModeState());
  }

  int navigationCurrentPage = 0;
}
