// ignore_for_file: camel_case_types

class modelIpm {
  final int id;
  final double uhh;
  final double rls;
  final double hls;
  final double ppp;
  final double ipm;
  final double pertumbuhan;
  final String tanggal;

  const modelIpm({
    required this.id,
    required this.uhh,
    required this.rls,
    required this.hls,
    required this.ppp,
    required this.ipm,
    required this.pertumbuhan,
    required this.tanggal,
  });

  factory modelIpm.fromJson(Map<String, dynamic> json) {
    return modelIpm(
      id: json['id'],
      uhh: json['uhh'],
      rls: json['rls'],
      hls: json['hls'],
      ppp: json['ppp'],
      ipm: json['ipm'],
      pertumbuhan: json['pertumbuhan'],
      tanggal: json['tanggal'],
    );
  }
}
