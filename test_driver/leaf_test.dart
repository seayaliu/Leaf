import 'package:flutter_driver/flutter_driver.dart';
import 'package:leaf/helper/keys.dart';
import 'package:test/test.dart';

void main() {
  group('Testing Leaf app', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('HomePage appbar has title Leaf', () async {
      final String foundText = await driver.getText(
        find.byValueKey(HomePageKeys.appBarTitle),
      );
      expect(foundText, "Leaf");
    });
  });
}
