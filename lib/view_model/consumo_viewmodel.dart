import 'package:flutter/material.dart';

import '../model/consumo_model.dart';

class ConsumoViewModel extends ChangeNotifier {
  //metodos
  ConsumoModelo calcular(int minutos, double gigabytes) {
    //variable
    int excesoMinutos = 0;
    double excesoGigabytes = 0;
    if (minutos > 300) {
      excesoMinutos = minutos - 300;
    }
    if (gigabytes > 10) {
      excesoGigabytes = gigabytes - 10;
    }
    double costoMinutos = excesoMinutos * 0.05;
    double costoGigabytes = excesoGigabytes * 2;
    double valorAdicional = costoMinutos + costoGigabytes;
    return ConsumoModelo(
      minutos: minutos,
      gigabytes: gigabytes,
      excesoMinutos: excesoMinutos,
      excesoGigabytes: excesoGigabytes,
      costoMinutos: costoMinutos,
      costoGigabytes: costoGigabytes,
      valorAdicional: valorAdicional,
    );
  }
}
