import 'package:flutter/material.dart';

class InicioPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Control de consumo telefónico'),
                    subtitle: Text(
                        'Calcula el valor adicional de tu plan mensual'),
                  ),
                  ListTile(
                    title: Text('Plan incluido'),
                    trailing: Text('300 minutos y 10 GB'),
                  ),
                  ListTile(
                    title: Text('Costos adicionales'),
                    trailing: Text('\$0.05 por minuto y \$2 por GB'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/principal');
              },
              child: Text('Iniciar cálculo'),
            ),
          ],
        ),
      ),
    );
  }
}
