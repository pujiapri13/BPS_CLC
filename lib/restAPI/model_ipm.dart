// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIpm {
  final int id;
  final String uhh;
  final String rls;
  final String hls;
  final String ppp;
  final String ipm;
  final String created_at;
  final String updated_at;

  const modelIpm({
    required this.id,
    required this.uhh,
    required this.rls,
    required this.hls,
    required this.ppp,
    required this.ipm,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIpm.fromJson(Map<String, dynamic> json) {
    return modelIpm(
      id: json['id'],
      uhh: json['uhh'],
      rls: json['rls'],
      hls: json['hls'],
      ppp: json['ppp'],
      ipm: json['ipm'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
