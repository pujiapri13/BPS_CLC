// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelInflasi {
  final int id;
  final double sembako;
  final double sandang;
  final double perumahan;
  final double perlengkapan;
  final double kesehatan;
  final double transportasi;
  final double informasi;
  final double rekreasi;
  final double pendidikan;
  final double penyedia_pangan;
  final double perawatan_pribadi;
  final double total_inflasi;
  final String tanggal;
  final int kategori;

  const modelInflasi({
    required this.id,
    required this.sembako,
    required this.sandang,
    required this.perumahan,
    required this.perlengkapan,
    required this.kesehatan,
    required this.transportasi,
    required this.informasi,
    required this.rekreasi,
    required this.pendidikan,
    required this.penyedia_pangan,
    required this.perawatan_pribadi,
    required this.total_inflasi,
    required this.tanggal,
    required this.kategori,
  });

  factory modelInflasi.fromJson(Map<String, dynamic> json) {
    return modelInflasi(
      id: json['id'],
      sembako: json['sembako'],
      sandang: json['sandang'],
      perumahan: json['perumahan'],
      perlengkapan: json['perlengkapan'],
      kesehatan: json['kesehatan'],
      transportasi: json['transportasi'],
      informasi: json['informasi'],
      rekreasi: json['rekreasi'],
      pendidikan: json['pendidikan'],
      penyedia_pangan: json['penyedia_pangan'],
      perawatan_pribadi: json['perawatan_pribadi'],
      total_inflasi: json['total_inflasi'],
      tanggal: json['tanggal'],
      kategori: json['kategori']
    );
  }
}
