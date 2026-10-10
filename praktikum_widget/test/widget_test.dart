import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_widget/main.dart';

void main() {
  testWidgets('Praktikum Widget smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Praktikum Widget Flutter'), findsOneWidget);
    expect(find.text('Statistik Interaksi'), findsOneWidget);
    expect(find.text('Jumlah Suka: 0'), findsOneWidget);

    // Tap tombol Suka
    await tester.tap(find.text('Suka'));
    await tester.pump();

    expect(find.text('Jumlah Suka: 1'), findsOneWidget);
  });
}
