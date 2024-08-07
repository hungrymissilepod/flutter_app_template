import 'package:flutter_test/flutter_test.dart';
import 'package:{{project_name.snakeCase()}}/app/view/app_view.dart';
import 'package:{{project_name.snakeCase()}}/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterView), findsOneWidget);
    });
  });
}
