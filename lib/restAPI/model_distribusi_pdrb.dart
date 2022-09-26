// ignore_for_file: non_constant_identifier_names

class DistPdrb {
  final int id;
  final double a;
  final double b;
  final double c;
  final double d;
  final double e;
  final double f;
  final double g;
  final double h;
  final double i;
  final double j;
  final double k;
  final double l;
  final double m_n;
  final double o;
  final double p;
  final double q;
  final double r_s_t_u;
  final double total_pdrb;
  final String tanggal;
  final int kategori;

  const DistPdrb({
    required this.id,
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
    required this.m_n,
    required this.o,
    required this.p,
    required this.q,
    required this.r_s_t_u,
    required this.total_pdrb,
    required this.tanggal,
    required this.kategori,
  });

  factory DistPdrb.fromJson(Map<String, dynamic> json) {
    return DistPdrb(
      id: json['id'],
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
      m_n: json['m_n'],
      o: json['o'],
      p: json['p'],
      q: json['q'],
      r_s_t_u: json['r_s_t_u'],
      total_pdrb: json['total_pdrb'],
      tanggal: json['tanggal'],
      kategori: json['kategori'],
    );
  }
}
