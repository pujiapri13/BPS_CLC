// ignore_for_file: non_constant_identifier_names

class PertumbuhanEkonomi {
  final int id;
  final String tahun;
  final String ekonomi_migas;
  final String ekonomi_nonmigas;
  final String created_at;
  final String updated_at;

  const PertumbuhanEkonomi({
    required this.id,
    required this.tahun,
    required this.ekonomi_migas,
    required this.ekonomi_nonmigas,
    required this.created_at,
    required this.updated_at,
  });

  factory PertumbuhanEkonomi.fromJson(Map<String, dynamic> json) {
    return PertumbuhanEkonomi(
      id: json['id'],
      tahun: json['tahun'],
      ekonomi_migas: json['ekonomi_migas'],
      ekonomi_nonmigas: json['ekonomi_nonmigas'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
