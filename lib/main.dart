import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model/consumo_viewmodel.dart';
import 'view/pantallas/inicio_pantalla.dart';
import 'view/pantallas/consumo_pantalla.dart';
import 'view/pantallas/resultado_pantalla.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ConsumoViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InicioPantalla(),
        '/principal': (context) => ConsumoPantalla(),
        '/resultado': (context) => ResultadoPantalla(),
      },
    );
  }
}
