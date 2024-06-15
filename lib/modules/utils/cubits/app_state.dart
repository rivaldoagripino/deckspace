import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool isDarkMode;

  const AppState({
    this.isDarkMode = false,
  });

  @override
  List<Object> get props => [
        isDarkMode,
      ];

  AppState copyWith({
    bool? isDarkMode,
  }) {
    return AppState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
