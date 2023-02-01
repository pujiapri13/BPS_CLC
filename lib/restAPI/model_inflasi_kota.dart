// ignore_for_file: non_constant_identifier_names

class ModelInflasiKota {
  final int id;
  final String nama;
  final String mtom;
  final String ytod;
  final String ytoy;
  final String total;
  final String bulan;
  final String created_at;
  final String updated_at;

  const ModelInflasiKota({
    required this.id,
    required this.nama,
    required this.mtom,
    required this.ytod,
    required this.ytoy,
    required this.total,
    required this.bulan,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelInflasiKota.fromJson(Map<String, dynamic> json) {
    return ModelInflasiKota(
        id: json['id'],
        nama: json['nama'],
        mtom: json['mtom'],
        ytod: json['ytod'],
        ytoy: json['ytoy'],
        total: json['total'],
        bulan: json['bulan'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
