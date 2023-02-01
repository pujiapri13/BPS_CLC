// ignore_for_file: non_constant_identifier_names

class Sensus {
  final int id;
  final String kategori;
  final String lk;
  final String pr;
  final String jumlah;
  final String sex_rasio;
  final String post_gen_z;
  final String gen_z;
  final String milenial;
  final String gen_x;
  final String baby_boomer;
  final String pre_boomer;
  final String created_at;
  final String updated_at;

  const Sensus({
    required this.id,
    required this.kategori,
    required this.lk,
    required this.pr,
    required this.jumlah,
    required this.sex_rasio,
    required this.post_gen_z,
    required this.gen_z,
    required this.milenial,
    required this.gen_x,
    required this.baby_boomer,
    required this.pre_boomer,
    required this.created_at,
    required this.updated_at,
  });

  factory Sensus.fromJson(Map<String, dynamic> json) {
    return Sensus(
      id: json['id'],
      kategori: json['kategori'],
      lk: json['lk'],
      pr: json['pr'],
      jumlah: json['jumlah'],
      sex_rasio: json['sex_rasio'],
      post_gen_z: json['post_gen_z'],
      gen_z: json['gen_z'],
      milenial: json['milenial'],
      gen_x: json['gen_x'],
      baby_boomer: json['baby_boomer'],
      pre_boomer: json['pre_boomer'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
