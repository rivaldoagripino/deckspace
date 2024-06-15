import 'package:deckspace/modules/splash/presentation/cubit/splash_cubit.dart';
import 'package:deckspace/modules/splash/presentation/page/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  static const moduleName = '/splash';

  @override
  List<Bind> get binds => [
        Bind((i) => SplashCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (_, args) => const SplashPage()),
        WildcardRoute(child: (_, args) => const SplashPage()),
      ];
}
