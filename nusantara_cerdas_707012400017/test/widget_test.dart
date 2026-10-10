import 'package:flutter_test/flutter_test.dart';
import 'package:nusantara_cerdas_707012400017/main.dart';

void main() {
  testWidgets('Nusantara Cerdas smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NusantaraCerdasApp());

    expect(find.text('Nusantara Cerdas'), findsOneWidget);
    expect(find.text('Kota Nusantara'), findsOneWidget);
    expect(find.text('Laporan Masuk Hari Ini'), findsOneWidget);
    expect(find.text('Pelayanan Lancar'), findsOneWidget);
    expect(find.text('Smart Governance'), findsOneWidget);
    expect(find.text('Smart Economy'), findsOneWidget);

    // Test laporan masuk
    await tester.tap(find.text('Laporan Masuk'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
