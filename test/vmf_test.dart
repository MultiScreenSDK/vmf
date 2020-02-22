import 'package:test/test.dart';

void main() {

  test('test', () {
    Stream.fromIterable([]).map((ints) => 0).listen((item) => print('$item'));
  });

}
