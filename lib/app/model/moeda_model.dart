class MoedaModel {
  final String nome;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  MoedaModel(this.nome, this.real, this.dolar, this.euro, this.bitcoin);

  static List<MoedaModel> getMoeda() {
    return <MoedaModel>[
      MoedaModel('Real', 1.0, 0.18, 0.15, 0.000016),
      MoedaModel('Dolar', 5.65, 1.0, 0.85, 0.000088),
      MoedaModel('Euro', 6.62, 1.17, 1.0, 0.000010),
      MoedaModel('Bitcoin', 64116.51, 11351.30, 9689.54, 1),
    ];
  }
}
