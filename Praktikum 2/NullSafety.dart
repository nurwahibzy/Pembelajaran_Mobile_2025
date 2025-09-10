String nama = 'Wahib'; // Variabel ini tidak boleh null, harus diisi pada saat deklarasi.

//jika variabel tidak di inisialisasi langsung pada saat deklarasi,
//maka akan terjadi error (seperti pada kode di bawah ini):
// String alamat; 

String? email = null; // Variabel ini boleh null karena kita telah menambahkan tanda `?` setelah tipe data.

void main(List<String> args) {
  print('Nama: $nama');
  // print('alamat: $alamat'); (ini akan error jika di-uncomment, karena alamat tidak diinisialisasi di awal)
  print('Email: ${email ?? "Email tidak tersedia"}'); // Menggunakan operator `??` untuk memberikan nilai default jika email null.
}