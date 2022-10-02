// ignore_for_file: non_constant_identifier_names

class TenagaKerja {
  final int id;
  final double angkatan_kerja;
  final double bekerja;
  final double pengangguran;
  final double bkn_angkatan_kerja;
  final double sekolah;
  final double urus_ruta;
  final double lainnya;
  final String gender;
  final String tanggal;

  const TenagaKerja({
    required this.id,
    required this.angkatan_kerja,
    required this.bekerja,
    required this.pengangguran,
    required this.bkn_angkatan_kerja,
    required this.sekolah,
    required this.urus_ruta,
    required this.lainnya,
    required this.gender,
    required this.tanggal,
  });

  factory TenagaKerja.fromJson(Map<String, dynamic> json) {
    return TenagaKerja(
      id: json['id'],
      angkatan_kerja: json['angkatan_kerja'],
      bekerja: json['bekerja'],
      bkn_angkatan_kerja: json['bkn_angkatan_kerja'],
      sekolah: json['sekolah'],
      pengangguran: json['pengangguran'],
      urus_ruta: json['urur_ruta'],
      lainnya: json['lainnya'],
      gender: json['gender'],
      tanggal: json['tanggal'],
    );
  }
}
