# master_plan - State Management

## Praktikum 1 - Praktikum 1: Dasar State dengan Model-View

Langkah 1: Buat Project Baru

![project baru dengan struktur model - view](images/image.png)

Langkah 2: Membuat model task.dart

![task.dart](images/image-1.png)

Langkah 3: Buat file plan.dart

![plan.dart](images/image-2.png)

Langkah 4: Buat file data_layer.dart

![data_layer.dart](images/image-3.png)

Langkah 5: Pindah ke file main.dart

![main.dart](images/image-4.png)

kita perlu menambahkan useMaterial3:false agar primarySwatch bisa berfungsi dengan baik

![menambahkan useMaterial:false](images/image-13.png)

Langkah 6: buat plan_screen.dart

![plan_screen.dart](images/image-5.png)

Langkah 7: buat method _buildAddTaskButton()

![method _buildAddTaskButton](images/image-7.png)

Langkah 8: buat widget _buildList()

![widget _buildList](images/image-6.png)

Langkah 9: buat widget _buildTaskTile

![widget _buildTaskTile](images/image-8.png)

Langkah 10: Tambah Scroll Controller

![Scroll Controller](images/image-9.png)

Langkah 11: Tambah Scroll Listener

![Scroll Listener](images/image-10.png)

Langkah 12: Tambah controller dan keyboard behavior

![controller dan keyboard behavior](images/image-11.png)

Langkah 13: Terakhir, tambah method dispose()

![alt text](images/image-12.png)

Langkah 14: Hasil

![hasil](images/hasil.jpg)

___

## Tugas Praktikum 1: 

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Langkah tersebut digunakan untuk menyatukan akses ke file `plan.dart & task.dart`. 
Hal ini dilakukan agar kita tidak perlu mengimport masing-masing file, namun kita hanya perlu mengimport `data_layer.dart` saja untuk mengakses kedua file tersebut 

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Variabel tersebut digunakan untuk menyimpan dan mengelola data inputan (plan) yang akan digunakan pada planScreen.dart. Variabel tersebut juga dibuat constant karena pada tahap awal, data masih kosong yang berarti Flutter tidak perlu membuat ulang objek setiap kali widget dijalankan.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Langkah 9](<images/Langkah 9.gif>)

Fungsi _buildTaskTile() akan membuat satu baris daftar tugas yang bisa diedit teksnya dan bisa ditandai selesai, lalu jika ada perubahan, maka langsung diperbarui ke dalam plan dan tampilan layar.

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

- Method initState digunakan untuk menginisialisasi variabel, listener, controller, dsb. Didalam state yang kita gunakan terdapat kode `FocusScope.of(context).requestFocus(FocusNode());` yang berfungsi untuk menutup keyboard pada saat setiap kali user melakukan scroll di aplikasi.

- Method  dispose digunakan untuk membersihkan resource agar tidak terjadi penggunaan memori yang berlebihan.


6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !


___

## Praktikum 2 - Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

Langkah 1: Buat file plan_provider.dart

![plan_provider.dart](images/image-14.png)

Langkah 2: Edit main.dart

![main.dart](images/image-15.png)

Langkah 3: Tambah method pada model plan.dart

![plan.dart](images/image-28.png)

Langkah 4: Pindah ke PlanScreen

Langkah 5: Edit method _buildAddTaskButton

![_buildAddTaskButton](images/image-17.png)

Langkah 6: Edit method _buildTaskTile

![_buildTaskTile](images/image-18.png)

Langkah 7: Edit _buildList

![_buildList](images/image-19.png)

Langkah 8: Tetap di class PlanScreen

![menambahkan footer](images/image-20.png)

Langkah 9: Tambah widget SafeArea

![widget safe area](images/image-16.png)

Hasil: 

![hasil](images/image-22.jpg)


## Tugas Praktikum 2:

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.


2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

Pada langkah tersebut, yang dimaksud dengan **InheritedWidget** adalah konsep dasar Flutter untuk membagikan data ke seluruh widget di bawahnya dalam tree tanpa harus mengoper data melalui constructor, namun pada praktikum 3 kita menggunakan **InheritedNotifier** karena memang merupakan turunan dari InheritedWidget yang sudah terhubung dengan **ValueNotifier**, sehingga ketika data Plan berubah dan ValueNotifier memanggil `notifyListeners()`, widget lain yang bergantung pada provider akan otomatis rebuild ulang. Hal ini membuat state menjadi aktif dan jauh lebih efisien dibanding InheritedWidget biasa yang tidak memiliki kemampuan notifikasi perubahan.


3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

Method tersebut akan menghitung jumlah tasks yang sudah selesai dan menghasilkan pesan progres secara otomatis. Getter `completedCount` akan memfilter daftar tasks dan menghitung ada berapa banyak yang memiliki complete == true. Sedangkan `completenessmessage` akan mengembalikan teks, sehingga setiap kali daftar task berubah informasi progres akan menampilkan hasil secara real time.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![langkah 9](images/Record_2025-11-17-13-21-10.gif)

5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !


## Praktikum 3: Membuat State di Multiple Screens

Langkah 1: Edit PlanProvider

![langkah 1](images/image-22.png)

Langkah 2: Edit main.dart

![main.dart](images/image-29.png)

Langkah 3: Edit plan_screen.dart

![langkah 3](images/image-25.png)

Langkah 4: Error

![langkah 4](images/image-26.png)

Langkah 5: Tambah getter Plan

![langkah 5](images/image-27.png)

Langkah 6: Method initState()

![langkah 6](images/image-24.png)

Langkah 7: Widget build

![widget build](images/image-30.png)

Langkah 8: Edit _buildTaskTile 

![buildTaskTile](images/image-31.png)

Langkah 9: Buat screen baru 

![langkah 9](images/image-16.png)

Langkah 10: Pindah ke class _PlanCreatorScreenState 

![planCreatorScreenState](images/image-32.png)

Langkah  11: Pindah ke method build 

![method build](images/image-33.png)

Langkah 12: Buat widget _buildListCreator 

![buildListCreator](images/image-34.png)

Langkah 13: Buat  void addPlan() 

![addPlan()](images/image-35.png)

Langkah 14: Buat widget _buildMasterPlans()

![BuildMasterPlane](images/image-36.png)

Hasil:

![Hasil](<images/Hasil Praktikum 3.gif>)


## Tugas Praktikum 3 :


1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.



2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

![soal](images/image-37.png)

Gambar tersebut menjelaskan bahwa di dalam aplikasi plan_master terdapat 2 struktur widget tree pada saat sebelum dan sesudah proses Navigator.push(). 

Pada diagram sisi kiri terlihat bahwa aplikasi pada awalnya berada pada halaman `PlanCreatorScreen` yang menampilkan `TextField` dan `ListView` dalam sebuah `Column`. Data pada tree tersebut dikelola oleh `PlanProvider` yang menjadi widget paling atas setelah `MaterialAPP`.

Ketika pengguna menekan rencana yang telah dibuat pada halaman `PlanCreatorScreen` maka aplikasi akan melakukan `Navigator.push()` yang akan memindahkan pengguna ke halaman baru yaitu `PlanScreen` (diagram sisi kiri). 
Halaman baru tersebut juga memiliki struktur yang berbeda yaitu adanya `ListView` untuk menampilkan daftar tugas yang dibungkus di  dalam `Expanded`, sementara pesan progres ditampilkan di bagian bawah menggunakan `SafeArea` agar aman dari area sistem (seperti notch atau gesture bar).

Diagram tersebut menunjukkan bahwa setelah berpindah halaman, tampilan UI akan berubah dari yang awalnya form input menjadi tampilan hasil rencana, namun hal tersebut tetap berada dalam satu `MaterialApp` dan tetap menggunakan data yang disediakan oleh `PlanProvider`.

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Hasil](<images/Hasil Praktikum 3.gif>)

Aplikasi sederhana yang telah saya buat adalah aplikasi yang membantu pengguna dalam membuat daftar rencana serta dapat melihat progresnya.

Aplikasi tersebut memiliki 2 model yaitu `Plan` dan `Task`

`PlanProvider` menggunakan `InheritedNotifier` agar data plan dapat digunakan di seluruh widget dan otomatis memperbarui ketika data berubah. 

 `PlanScreen` yang menampilkan daftar tugas menggunakan `ListView`, memungkinkan pengguna menambah task lewat `FloatingActionButton`, mengubah teks task, menandai task selesai melalui Checkbox, dan menghitung progres secara otomatis menggunakan getter `completedCount` dan `completenessMessage`. 

Pada bagian bawah layar, terdapat `SafeArea` yang menampilkan pesan progres seperti “3 out of 5 tasks”.

 Secara keseluruhan, praktikum ini merupakan implementasi state management sederhana, navigasi, layout widget, dan tampilan yang dinamis berbasis data.

4. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !