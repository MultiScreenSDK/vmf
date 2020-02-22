
import 'package:vmf/device.dart';

void findDevices() {
  var discovery = Discovery();

  discovery.start();
  discovery.devices.listen(
    (devices) {},
  );
  discovery.stop();

  discovery.dispose();
}

void findDeviceIf() {
  var discovery = Discovery();

  discovery.start();
  discovery.devices
      .getIfDevice(IsName('Samsung QUHD 49'))
      .timeout(Duration(seconds: 10))
      .listen(
        (device) {},
      );
  discovery.stop();

  discovery.dispose();
}
