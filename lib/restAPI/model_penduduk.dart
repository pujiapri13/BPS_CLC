// ignore_for_file: non_constant_identifier_names

class JumlahPenduduk {
  final int id;
  final String gender;
  final String a;
  final String b;
  final String c;
  final String d;
  final String e;
  final String f;
  final String g;
  final String h;
  final String i;
  final String j;
  final String k;
  final String l;
  final String m;
  final String n;
  final String o;
  final String p;
  final String total;
  final String created_at;
  final String updated_at;

  const JumlahPenduduk({
    required this.id,
    required this.gender,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
    required this.f,
    required this.g,
    required this.h,
    required this.i,
    required this.j,
    required this.k,
    required this.l,
    required this.m,
    required this.n,
    required this.o,
    required this.p,
    required this.total,
    required this.created_at,
    required this.updated_at,
  });

  factory JumlahPenduduk.fromJson(Map<String, dynamic> json) {
    return JumlahPenduduk(
      id: json['id'],
      gender: json['gender'],
      a: json['a'],
      b: json['b'],
      c: json['c'],
      d: json['d'],
      e: json['e'],
      f: json['f'],
      g: json['g'],
      h: json['h'],
      i: json['i'],
      j: json['j'],
      k: json['k'],
      l: json['l'],
      m: json['m'],
      n: json['n'],
      o: json['o'],
      p: json['p'],
      total: json['total'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
