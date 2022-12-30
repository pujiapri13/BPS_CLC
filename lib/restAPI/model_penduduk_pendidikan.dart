// ignore_for_file: non_constant_identifier_names

class PendudukPendidikan {
  final int id;
  final String gender;
  final String sd;
  final String smp;
  final String sma;
  final String perguruan_tinggi;
  final String jumlah;
  final String created_at;
  final String updated_at;

  const PendudukPendidikan({
    required this.id,
    required this.gender,
    required this.sd,
    required this.smp,
    required this.sma,
    required this.perguruan_tinggi,
    required this.jumlah,
    required this.created_at,
    required this.updated_at,
  });

  factory PendudukPendidikan.fromJson(Map<String, dynamic> json) {
    return PendudukPendidikan(
      id: json['id'],
      gender: json['gender'],
      sd: json['sd'],
      smp: json['smp'],
      sma: json['sma'],
      perguruan_tinggi: json['perguruan_tinggi'],
      jumlah: json['jumlah'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
