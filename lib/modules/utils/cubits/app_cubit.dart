import 'package:deckspace/modules/shared_navigator.dart';
import 'package:deckspace/modules/utils/cubits/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  final SharedNavigator sharedNavigator;

  AppCubit({
    required this.sharedNavigator,
  }) : super(const AppState());
}
