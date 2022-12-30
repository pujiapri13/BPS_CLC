// ignore_for_file: non_constant_identifier_names

class Tkk {
  final int id;
  final String lk;
  final String pr;
  final String jumlah;
  final String created_at;
  final String updated_at;

  const Tkk({
    required this.id,
    required this.lk,
    required this.pr,
    required this.jumlah,
    required this.created_at,
    required this.updated_at,
  });

  factory Tkk.fromJson(Map<String, dynamic> json) {
    return Tkk(
      id: json['id'],
      lk: json['lk'],
      pr: json['pr'],
      jumlah: json['jumlah'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
