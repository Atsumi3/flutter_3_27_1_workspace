import 'package:app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Display Text Check', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    /// 実際は値を入れ込むがテストプロジェクトなので固定値
    expect(find.text('Tanaka No.1'), findsOneWidget);
    expect(find.text('Tanaka No.10'), findsNothing);
  });
}
