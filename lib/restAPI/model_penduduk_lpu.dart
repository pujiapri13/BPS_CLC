// ignore_for_file: non_constant_identifier_names

class PendudukLpu {
  final int id;
  final String gender;
  final String pertanian;
  final String industri;
  final String jasa;
  final String jumlah;
  final String created_at;
  final String updated_at;

  const PendudukLpu({
    required this.id,
    required this.gender,
    required this.pertanian,
    required this.industri,
    required this.jasa,
    required this.jumlah,
    required this.created_at,
    required this.updated_at,
  });

  factory PendudukLpu.fromJson(Map<String, dynamic> json) {
    return PendudukLpu(
      id: json['id'],
      gender: json['gender'],
      pertanian: json['pertanian'],
      industri: json['industri'],
      jasa: json['jasa'],
      jumlah: json['jumlah'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
