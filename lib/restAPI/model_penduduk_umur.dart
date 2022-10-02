// ignore_for_file: non_constant_identifier_names

class PendudukUmur {
  final int id;
  final String jenis_kelamin;
  final int a;
  final int b;
  final int c;
  final int d;
  final int e;
  final int f;
  final int g;
  final int h;
  final int i;
  final int j;
  final int k;
  final int l;
  final int m;
  final int n;
  final int o;
  final int p;
  final int total;
  final String tanggal;

  const PendudukUmur({
    required this.id,
    required this.jenis_kelamin,
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
    required this.tanggal,
  });

  factory PendudukUmur.fromJson(Map<String, dynamic> json) {
    return PendudukUmur(
      id: json['id'],
      jenis_kelamin: json['jenis_kelamin'],
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
      tanggal: json['tanggal'],
    );
  }
}
