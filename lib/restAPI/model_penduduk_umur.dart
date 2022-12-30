// ignore_for_file: non_constant_identifier_names

class PendudukUmur {
  final int id;
  final String gender;
  final String a;
  final String b;
  final String c;
  final String total;
  final String created_at;
  final String updated_at;

  const PendudukUmur({
    required this.id,
    required this.gender,
    required this.a,
    required this.b,
    required this.c,
    required this.total,
    required this.created_at,
    required this.updated_at,
  });

  factory PendudukUmur.fromJson(Map<String, dynamic> json) {
    return PendudukUmur(
      id: json['id'],
      gender: json['gender'],
      a: json['a'],
      b: json['b'],
      c: json['c'],
      total: json['total'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
