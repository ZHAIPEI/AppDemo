// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todolist/main.dart';

void main() {
  testWidgets('find a bottom navigation widget on homepage', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final bottomNavigationKey = Key('BottomNavigation');
    expect(find.byKey(bottomNavigationKey), findsOneWidget);
  });

  testWidgets('navigation among navigation bar', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final searchIcon = Icons.search;
    final leftMenuIcon = Icons.menu;
    final accountCenterIcon = Icons.account_circle;

    final homeIcon = Icons.home;
    final gunqiuIcon = Icons.sentiment_neutral;
    final richengIcon = Icons.sentiment_satisfied;

    expect(find.byIcon(homeIcon), findsOneWidget);
    expect(find.byIcon(gunqiuIcon), findsOneWidget);
    expect(find.byIcon(richengIcon), findsOneWidget);

    // test home page
    final homeKey = Key('Home');

    expect(find.text('德赢'), findsOneWidget);
    expect(find.byKey(homeKey), findsOneWidget);
    expect(find.byIcon(leftMenuIcon), findsOneWidget);
    expect(find.byIcon(searchIcon), findsOneWidget);
    expect(find.byIcon(accountCenterIcon), findsOneWidget);

    // test 滚球 page
    final gunqiuKey = Key('Gunqiu');

    await tester.tap(find.byIcon(gunqiuIcon));
    await tester.pump();

    expect(find.text('滚球'), findsNWidgets(2));
    expect(find.byKey(gunqiuKey), findsOneWidget);
    expect(find.byIcon(leftMenuIcon), findsOneWidget);
    expect(find.byIcon(searchIcon), findsOneWidget);
    expect(find.byIcon(accountCenterIcon), findsOneWidget);

    // test 日程 page
    final richengKey = Key('Richeng');

    await tester.tap(find.byIcon(richengIcon));
    await tester.pump();

    expect(find.text('日程'), findsNWidgets(2));
    expect(find.byKey(richengKey), findsOneWidget);
    expect(find.byIcon(leftMenuIcon), findsOneWidget);
    expect(find.byIcon(searchIcon), findsOneWidget);
    expect(find.byIcon(accountCenterIcon), findsOneWidget);
  });

  testWidgets('Navigate to left menu and navigate out', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final leftMenuIcon = Icons.menu;
    final leftMenuKey = Key('LeftMenu');

    await tester.tap(find.byIcon(leftMenuIcon));
    await tester.pumpAndSettle();

    expect(find.byKey(leftMenuKey), findsOneWidget);
    expect(find.text('足球'), findsOneWidget);

    // navigate out
    final arrowBackIcon = Icons.arrow_back;
    final bottomNavigationKey = Key('BottomNavigation');

    await tester.tap(find.byIcon(arrowBackIcon));
    await tester.pumpAndSettle();

    expect(find.byKey(bottomNavigationKey), findsOneWidget);
    expect(find.text('APP DEMO'), findsOneWidget);
  });

  testWidgets('Navigate to account center and navigate out', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final accountCenterIcon = Icons.account_circle;
    final accountCenterKey = Key('AccountCenter');

    await tester.tap(find.byIcon(accountCenterIcon));
    await tester.pumpAndSettle();

    expect(find.byKey(accountCenterKey), findsOneWidget);
    expect(find.text('账号中心'), findsOneWidget);

    // navigate out
    final returnIcon = Icons.arrow_back;
    final bottomNavigationKey = Key('BottomNavigation');

    await tester.tap(find.byIcon(returnIcon));
    await tester.pumpAndSettle();

    expect(find.byKey(bottomNavigationKey), findsOneWidget);
    expect(find.text('APP DEMO'), findsOneWidget);
  });
}
