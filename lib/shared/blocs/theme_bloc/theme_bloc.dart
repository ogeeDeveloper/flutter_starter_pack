import 'package:flutter_starter_pack/core/theme/app_theme.dart';
import 'package:flutter_starter_pack/core/theme/theme_data.dart';
import 'package:flutter_starter_pack/shared/blocs/theme_bloc/theme_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, AppTheme> {
  ThemeBloc() : super(AppTheme(themeData: AppThemeData.lightTheme));

  @override
  Stream<AppTheme> mapEventToState(ThemeEvent event) async* {
    if (event is ToggleThemeEvent) {
      yield state.themeData == AppThemeData.lightTheme
          ? AppTheme(themeData: AppThemeData.darkTheme)
          : AppTheme(themeData: AppThemeData.lightTheme);
    }
  }
}