// ignore_for_file: non_constant_identifier_names

class TenagaKerja {
  final int id;
  final String angkatan_kerja;
  final String bekerja;
  final String pengangguran;
  final String bkn_angkatan_kerja;
  final String sekolah;
  final String urus_ruta;
  final String lainnya;
  final String total;
  final String tpak;
  final String tkk;
  final String tpt;
  final String gender;
  final String created_at;
  final String updated_at;
  const TenagaKerja(
      {required this.id,
      required this.angkatan_kerja,
      required this.bekerja,
      required this.pengangguran,
      required this.bkn_angkatan_kerja,
      required this.sekolah,
      required this.urus_ruta,
      required this.lainnya,
      required this.total,
      required this.gender,
      required this.tpak,
      required this.tkk,
      required this.tpt,
      required this.created_at,
      required this.updated_at});

  factory TenagaKerja.fromJson(Map<String, dynamic> json) {
    return TenagaKerja(
        id: json['id'],
        angkatan_kerja: json['angkatan_kerja'],
        bekerja: json['bekerja'],
        bkn_angkatan_kerja: json['bkn_angkatan_kerja'],
        sekolah: json['sekolah'],
        pengangguran: json['pengangguran'],
        urus_ruta: json['urus_ruta'],
        lainnya: json['lainnya'],
        total: json['total'],
        gender: json['gender'],
        tpak: json['tpak'],
        tkk: json['tkk'],
        tpt: json['tpt'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
