

import 'package:rxdart/rxdart.dart';

import 'device.dart';

class Discovery {
  final devices = BehaviorSubject<List<Device>>();

  void start() {}
  void stop() {}
  void dispose() {
    devices.close();
  }
}

extension ListDeviceBehaviorSubjectExtension on BehaviorSubject<List<Device>> {
  BehaviorSubject<Device> getIfDevice(DeviceMatcher matcher) {
    return map((devices) => devices.firstWhere(matcher.matches));
  }
}
