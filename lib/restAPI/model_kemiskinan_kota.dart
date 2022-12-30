// ignore_for_file: non_constant_identifier_names

class ModelKemiskinanKota {
  final int id;
  final String kabkota;
  final String pddk_mskn;
  final String p0;
  final String p1;
  final String p2;
  final String gk;
  final String created_at;
  final String updated_at;

  const ModelKemiskinanKota({
    required this.id,
    required this.kabkota,
    required this.pddk_mskn,
    required this.p0,
    required this.p1,
    required this.p2,
    required this.gk,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelKemiskinanKota.fromJson(Map<String, dynamic> json) {
    return ModelKemiskinanKota(
        id: json['id'],
        kabkota: json['kabkota'],
        pddk_mskn: json['pddk_mskn'],
        p0: json['p0'],
        p1: json['p1'],
        p2: json['p2'],
        gk: json['gk'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
