// ignore_for_file: non_constant_identifier_names

class LajuPdrbAdhk {
  final int id;
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
  final String m_n;
  final String o;
  final String p;
  final String q;
  final String r_s_t_u;
  final String total;
  final String kategori;
  final String created_at;
  final String updated_at;

  const LajuPdrbAdhk(
      {required this.id,
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
      required this.total,
      required this.kategori,
      required this.created_at,
      required this.updated_at});

  factory LajuPdrbAdhk.fromJson(Map<String, dynamic> json) {
    return LajuPdrbAdhk(
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
        total: json['total'],
        kategori: json['kategori'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
