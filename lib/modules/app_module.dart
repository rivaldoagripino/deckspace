import 'package:deckspace/modules/shared_navigator.dart';
import 'package:deckspace/modules/splash/splash_module.dart';
import 'package:deckspace/modules/utils/cubits/app_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedNavigator()),
        Bind((i) => AppCubit(sharedNavigator: i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute(SplashModule.moduleName, module: SplashModule()),
  ];
}
