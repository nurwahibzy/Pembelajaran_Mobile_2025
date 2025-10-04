void main(List<String> args) {
  // Membuat record dengan berbagai tipe data
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  //mengakses fungsi tukar
  var hasilTukar = tukar((10, 20));
  print(hasilTukar);
  //mengakses fungsi tukar dengan destructuring
  var (x, y) = tukar((30, 40));
  print('x: $x, y: $y');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Nurwahib Zakki Yahya', 2341720154);
  print(mahasiswa);

  var mahasiswa2 = ('first', nama: 'Nurwahib Zakki Yahya', nim: 2341720154, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print('nama: ' + mahasiswa2.nama); // Prints nama
  print('nim:' + mahasiswa2.nim.toString()); // Prints nim
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
