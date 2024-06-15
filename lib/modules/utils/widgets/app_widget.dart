import 'package:deckspace/core/constants/app_theme.dart';
import 'package:deckspace/core/pages/app_page_state.dart';
import 'package:deckspace/modules/utils/cubits/app_cubit.dart';
import 'package:deckspace/modules/utils/cubits/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularCubitState<AppWidget, AppCubit>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      bloc: cubit,
      builder: (context, _) {
        return MaterialApp(
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeDefault,
        ).modular();
      },
    );
  }
}
