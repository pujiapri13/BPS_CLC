// ignore_for_file: non_constant_identifier_names

class ModelKetimpangan {
  final int id;
  final String rendah;
  final String menengah;
  final String tinggi;
  final String jumlah;
  final String created_at;
  final String updated_at;

ModelKetimpangan({
    required this.id,
    required this.rendah,
    required this.menengah,
    required this.tinggi,
    required this.jumlah,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelKetimpangan.fromJson(Map<String, dynamic> json) {
    return ModelKetimpangan(
        id: json['id'],
        rendah: json['rendah'],
        menengah: json['menengah'],
        tinggi: json['tinggi'],
        jumlah: json['jumlah'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
