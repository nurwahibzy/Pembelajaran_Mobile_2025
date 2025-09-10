// Late Variable yang tidak diinisialisasi pada saat deklarasi
late String nama;
void main(List<String> args) {
  nama = "Wahib"; // Inisialisasi variabel sebelum digunakan
  print("Haiii, nama saya " + nama);
}
