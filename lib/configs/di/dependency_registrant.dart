import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sonarwave/configs/di/dependency_registrant.config.dart';
import 'package:sonarwave/configs/router/router.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

Future<void> registerDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
}
