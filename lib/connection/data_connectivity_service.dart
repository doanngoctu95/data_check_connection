import 'dart:async';

import 'package:data_connection_checker/data_connection_checker.dart';

class DataConnectivityService {
  DataConnectivityService() {
    DataConnectionChecker().onStatusChange.listen((dataConnectionStatus) {
      connectivityStreamController.add(dataConnectionStatus);
    });
  }

  StreamController<DataConnectionStatus> connectivityStreamController =
      StreamController<DataConnectionStatus>();
}
