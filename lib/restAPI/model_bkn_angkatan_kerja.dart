class ModelBknAngkatanKerja {
  final int id;
  final String gender;
  final String sekolah;
  final String urus_ruta;
  final String lainnya;
  final String jumlah;
  final String created_at;
  final String updated_at;

  const ModelBknAngkatanKerja({
    required this.id,
    required this.gender,
    required this.sekolah,
    required this.urus_ruta,
    required this.lainnya,    
    required this.jumlah,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelBknAngkatanKerja.fromJson(Map<String, dynamic> json) {
    return ModelBknAngkatanKerja(
        id: json['id'],
        gender: json['gender'],
        sekolah: json['sekolah'],
        urus_ruta: json['urus_ruta'],
        lainnya: json['lainnya'],
        jumlah: json['jumlah'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
