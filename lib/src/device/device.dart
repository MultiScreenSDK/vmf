
class Device {
  String name;
}

abstract class DeviceMatcher {
  bool matches(Device device);
}

class IsName extends DeviceMatcher {
  String name;
  IsName(this.name);

  @override
  bool matches(Device device) => device.name == name;
}
