import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('demo app', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('verifies the left menu contains 板球 item', () async {
      final leftMenuIconFinder = find.byValueKey('menuIcon');
      final leftMenuFinder = find.byValueKey('LeftMenu');
      final leftMenuTitleFinder = find.byValueKey('menuTitle');
      final lastItemFinder = find.byValueKey('banqiu');
      final youshengOfBanqiu = find.byValueKey('yousheng');

      final timeline = await driver.traceAction(() async {
        await driver.tap(leftMenuIconFinder);
        expect(await driver.getText(leftMenuTitleFinder), 'APP DEMO-Leftmenu');

        await driver.scrollUntilVisible(leftMenuFinder, lastItemFinder, dyScroll: -300);
        expect(await driver.getText(lastItemFinder), '板球');

        await driver.tap(lastItemFinder);
        expect(await driver.getText(youshengOfBanqiu), '优胜冠军');
      });

      final summary = new TimelineSummary.summarize(timeline);
      summary.writeTimelineToFile('scrolling_timeline', pretty: true);
    });
  });
}