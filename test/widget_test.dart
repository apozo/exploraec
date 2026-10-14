import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exploraec/main.dart';

void main() {
  testWidgets('BienvenidaScreen muestra título, subtítulo y botón', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ExploraEcApp());

    expect(find.text('ExploraEC'), findsOneWidget);
    expect(find.text('Descubre lugares increíbles cerca de ti'), findsOneWidget);
    expect(find.byIcon(Icons.explore), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Empezar'), findsOneWidget);
  });
}
