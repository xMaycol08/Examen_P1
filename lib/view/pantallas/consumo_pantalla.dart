import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/consumo_viewmodel.dart';
import '../widgets/campo_numero.dart';

class ConsumoPantalla extends StatefulWidget {
  @override
  State<ConsumoPantalla> createState() => _ConsumoPantallaState();
}

class _ConsumoPantallaState extends State<ConsumoPantalla> {
  //mapeo
  final minutosController = TextEditingController();
  final gigabytesController = TextEditingController();

  void limpiar() {
    minutosController.clear();
    gigabytesController.clear();
  }

  //rutas
  void calcular() {
    int minutos = int.parse(minutosController.text);
    double gigabytes = double.parse(gigabytesController.text);

    //recibir a view model
    final vm = context.read<ConsumoViewModel>();
    final resultado = vm.calcular(minutos, gigabytes);
    //paso de parametros
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo del Plan'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ingresa tu consumo mensual',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            CampoNumero(
              etiqueta: 'Minutos consumidos',
              controller: minutosController,
            ),
            SizedBox(height: 16.0),
            CampoNumero(
              etiqueta: 'Gigabytes consumidos',
              controller: gigabytesController,
            ),
            SizedBox(height: 16.0),
            Text('El plan incluye 300 minutos y 10 GB'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular consumo'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: limpiar,
            child: Icon(Icons.cleaning_services),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
