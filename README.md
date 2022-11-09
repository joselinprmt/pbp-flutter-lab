# App counter_7

Oleh Joselin Permata Aprillia (2106705410) <br>
Kelas PBP-C
____

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

`Stateless widget` adalah widget yang bersifat statis dan tidak bergantung pada response dari luar. Sedangkan `Stateful widget` adalah widget yang bersifat dinamis, dan dapat merubah state dari widget tersebut jika diberikan response atau event. Biasanya stateful widget akan memanggil method `setState()`, yang selanjutnya akan memproses perubahan state sesuai response yang diberikan.
___

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `Scaffold` adalah widget utama pada flutter untuk membuat halaman utama. Biasanya memiliki beberapa parameter seperti app bar, body, dan floating action bar.
- `Text` berfungsi untuk menampilkan teks.
- `Layout`: Center, Row, Column, Expanded class, berguna untuk mengatur tata letak dari widget.
- `Container` berfungsi sebagai 'container' yang berguna untuk menampung atau memisahkan widget lain.
- `Visibility` berfungsi untuk membuat widget yang ditampung menjadi visible atau invisible.
- `FloatingActionButton` berfungsi untuk menampilkan button yang posisinya floating atau berada di paling atas widget-widget lain.
- `Icon` adalah widget untuk menampilkan icon.
___

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` biasanya digunakan pada stateful widget untuk menyatakan bahwa telah terjadi perubahan internal state, yang selanjutnya akan melakukan suatu perintah atau mengubah nilai suatu variabel. Fungsi `setState()` pada `counter_7` dipanggil pada fungsi increment dan decrement counter, dimana ketika tombol ditekan, menandakan telah terjadi perubahan state, dan variabel `counter` akan bertambah atau berkurang.
___

### Jelaskan perbedaan antara const dengan final.

- Objek `const` digunakan untuk value yang sudah diketahui saat compile time. Contohnya `const a = 3;`. Namun kita tidak dapat menggunakan const pada perintah yang dicompute pada runtime, contohnya `new DateTime.now()`, karena value pada method ini baru akan didapat setelah line tersebut di execute.

- `final` digunakan untuk value yang tidak diketahui saat compile time, dan akan dikalkulasi saat runtime. contohnya `final date = new DateTime.now()`. Final juga dapat digunakan untuk mengambil sesuatu dari database, mengambil HTTP response, maupun local file, yang sifatnya tetap.

- Baik `const` maupun `final` tidak bisa di reassigned nilainya. Namun, fields pada object yang final, jika tidak dinyatakan sebagai const atau final, dapat direassign (Namun tidak pada object yang const). Perbedaan lain dari `const` dan `final`, yaitu pada deklarasi collection. Pada `const` collection, semua elemen pada collection tersebut bersifat `const` pula. Berbeda dengan `final`, dimana elemen di dalamnya tidak ikut menjadi `final`.
___

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Dibuat sebuah app baru dengan memanggil `flutter create counter_7` pada terminal, lalu ke `lib/main.dart`.
- Mengubah child dari floatingActionButton menjadi widget layout Row, agar bisa menaruh 2 tombol FloatingActionButton secara sejajar dalam 1 Row. Di tengah button juga terdapat container yang bersifat Expanded untuk memisahkan dan menaruh kedua tombol pada bagian ujung kiri dan kanan.
- Inisialisasi juga fungsi void `_decrementCounter()` yang akan mengurangi nilai `_counter`.
- Menambah conditional yang akan menampilkan tulisan GENAP berwarna merah jika counter nilainya genap, dan GANJIL berwarna biru jika counter bernilai ganjil.
- Melakukan binding dengan memanggil fungsi `_decrementCounter()` ketika tombol "-" ditekan, dan memanggil `_incrementCounter()` saat tombol "+" ditekan.
- Melakukan wrap tombol "-" dengan widget Visibility, sehingga ketika counter kurang atau sama dengan nol, tombol "-" akan menjadi invisible.