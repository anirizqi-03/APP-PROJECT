void main() {
  String nama = "Ani";
  String nim = "E41251131";
  String alamat = "Jember, East Java";
  const double IPK = 3.50;
  const int nilaiUTS = 50;
  const int nilaiUAS = 50;
  double nilaiAkhir = (nilaiUTS + nilaiUAS) / 2;
  if (nilaiAkhir >= 80) {
    print("Selamat Anda Lulus");
  } else if (nilaiAkhir < 80) {
    print("Maaf Anda Harus Mengulang Mata Kuliah Ini");
  }

  print("Nama: $nama");
  print("NIM: $nim");
  print("Alamat: $alamat");
  print("IPK: $IPK");
  print("Nilai Akhir: $nilaiAkhir");
}
