import 'package:flutter/material.dart';

import '../../model/consumo_model.dart';

class ResultadoPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //recibir parametros
    final consumo =
        ModalRoute.of(context)!.settings.arguments as ConsumoModelo;
    Widget dato(String titulo, String valor) {
      return ListTile(title: Text(titulo), trailing: Text(valor));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Consumo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  dato('Minutos consumidos', '${consumo.minutos}'),
                  dato('GB consumidos', '${consumo.gigabytes}'),
                  dato('Exceso de minutos', '${consumo.excesoMinutos}'),
                  dato('Costo por minutos',
                      '\$${consumo.costoMinutos.toStringAsFixed(2)}'),
                  dato('Exceso de GB',
                      '${consumo.excesoGigabytes.toStringAsFixed(2)}'),
                  dato('Costo por GB',
                      '\$${consumo.costoGigabytes.toStringAsFixed(2)}'),
                  dato('Valor adicional',
                      '\$${consumo.valorAdicional.toStringAsFixed(2)}'),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
