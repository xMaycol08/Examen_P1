import 'package:flutter_test/flutter_test.dart';

import 'package:examen_p1/main.dart';

void main() {
  testWidgets('Muestra la pantalla de inicio', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Inicio'), findsOneWidget);
    expect(find.text('Control de consumo telefónico'), findsOneWidget);
    expect(find.text('Iniciar cálculo'), findsOneWidget);
  });
}
