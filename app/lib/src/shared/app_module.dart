import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_flutter/src/configuration/config_page.dart';
import 'package:lista_flutter/src/configuration/services/configuration_service.dart';
import 'package:lista_flutter/src/home/home_module.dart';
import 'package:lista_flutter/src/shared/services/realm/realm_config.dart';
import 'package:lista_flutter/src/shared/stores/app_store.dart';
import 'package:realm/realm.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.instance<Realm>(Realm(config)),
        AutoBind.factory<ConfigurationService>(ConfigurationServiceImpl.new),
        AutoBind.singleton(AppStore.new) /*new version*/
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/config', child: (context, args) => const ConfigPage())
      ];
}
