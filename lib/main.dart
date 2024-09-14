import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_theme.dart';
import 'shared/blocs/theme_bloc/theme_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, appTheme) {
        return MaterialApp(
          theme: appTheme.themeData,
          home: const Placeholder(),
        );
      },
    );
  }
}
