// ignore_for_file: non_constant_identifier_names

class ModelKemiskinan {
  final int id;
  final double pddk_miskin;
  final double p0;
  final double p1;
  final double p2;
  final double gk;
  final String tanggal;

  const ModelKemiskinan({
    required this.id,
    required this.pddk_miskin,
    required this.p0,
    required this.p1,
    required this.p2,
    required this.gk,
    required this.tanggal,
  });

  factory ModelKemiskinan.fromJson(Map<String, dynamic> json) {
    return ModelKemiskinan(
        id: json['id'],
        pddk_miskin: json['ppdk_mskn'],
        p0: json['p0'],
        p1: json['p1'],
        p2: json['p2'],
        gk: json['gk'],
        tanggal: json['tanggal']);
  }
}
