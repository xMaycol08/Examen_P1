class ConsumoModelo {
  final int minutos;
  final double gigabytes;
  final int excesoMinutos;
  final double excesoGigabytes;
  final double costoMinutos;
  final double costoGigabytes;
  final double valorAdicional;

  //constructor
  ConsumoModelo({
    required this.minutos,
    required this.gigabytes,
    required this.excesoMinutos,
    required this.excesoGigabytes,
    required this.costoMinutos,
    required this.costoGigabytes,
    required this.valorAdicional,
  });
}
