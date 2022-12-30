// ignore_for_file: non_constant_identifier_names

class JumlahPendudukKecamatan {
  final int id;
  final String kecamatan;
  final String lk;
  final String pr;
  final String total;
  final String created_at;
  final String updated_at;

  const JumlahPendudukKecamatan({
    required this.id,
    required this.kecamatan,
    required this.lk,
    required this.pr,
    required this.total,
    required this.created_at,
    required this.updated_at,
  });

  factory JumlahPendudukKecamatan.fromJson(Map<String, dynamic> json) {
    return JumlahPendudukKecamatan(
      id: json['id'],
      kecamatan: json['kecamatan'],
      lk: json['lk'],
      pr: json['pr'],
      total: json['total'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
