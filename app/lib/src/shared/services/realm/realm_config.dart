import 'package:lista_flutter/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

import 'models/configuration_model.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
    TaskModel.schema,
    TasBoard.schema,
    
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system'));
  },
);
