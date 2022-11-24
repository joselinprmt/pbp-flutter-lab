# App counter_7

Oleh Joselin Permata Aprillia (2106705410) <br>
Kelas PBP-C
____

## Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

`Stateless widget` adalah widget yang bersifat statis dan tidak bergantung pada response dari luar. Sedangkan `Stateful widget` adalah widget yang bersifat dinamis, dan dapat merubah state dari widget tersebut jika diberikan response atau event. Biasanya stateful widget akan memanggil method `setState()`, yang selanjutnya akan memproses perubahan state sesuai response yang diberikan.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `Scaffold` adalah widget utama pada flutter untuk membuat halaman utama. Biasanya memiliki beberapa parameter seperti app bar, body, dan floating action bar.
- `Text` berfungsi untuk menampilkan teks.
- `Layout`: Center, Row, Column, Expanded class, berguna untuk mengatur tata letak dari widget.
- `Container` berfungsi sebagai 'container' yang berguna untuk menampung atau memisahkan widget lain.
- `Visibility` berfungsi untuk membuat widget yang ditampung menjadi visible atau invisible.
- `FloatingActionButton` berfungsi untuk menampilkan button yang posisinya floating atau berada di paling atas widget-widget lain.
- `Icon` adalah widget untuk menampilkan icon.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` biasanya digunakan pada stateful widget untuk menyatakan bahwa telah terjadi perubahan internal state, yang selanjutnya akan melakukan suatu perintah atau mengubah nilai suatu variabel. Fungsi `setState()` pada `counter_7` dipanggil pada fungsi increment dan decrement counter, dimana ketika tombol ditekan, menandakan telah terjadi perubahan state, dan variabel `counter` akan bertambah atau berkurang.

### Jelaskan perbedaan antara const dengan final.

- Objek `const` digunakan untuk value yang sudah diketahui saat compile time. Contohnya `const a = 3;`. Namun kita tidak dapat menggunakan const pada perintah yang dicompute pada runtime, contohnya `new DateTime.now()`, karena value pada method ini baru akan didapat setelah line tersebut di execute.

- `final` digunakan untuk value yang tidak diketahui saat compile time, dan akan dikalkulasi saat runtime. contohnya `final date = new DateTime.now()`. Final juga dapat digunakan untuk mengambil sesuatu dari database, mengambil HTTP response, maupun local file, yang sifatnya tetap.

- Baik `const` maupun `final` tidak bisa di reassigned nilainya. Namun, fields pada object yang final, jika tidak dinyatakan sebagai const atau final, dapat direassign (Namun tidak pada object yang const). Perbedaan lain dari `const` dan `final`, yaitu pada deklarasi collection. Pada `const` collection, semua elemen pada collection tersebut bersifat `const` pula. Berbeda dengan `final`, dimana elemen di dalamnya tidak ikut menjadi `final`.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Dibuat sebuah app baru dengan memanggil `flutter create counter_7` pada terminal, lalu ke `lib/main.dart`.
- Mengubah child dari floatingActionButton menjadi widget layout Row, agar bisa menaruh 2 tombol FloatingActionButton secara sejajar dalam 1 Row. Di tengah button juga terdapat container yang bersifat Expanded untuk memisahkan dan menaruh kedua tombol pada bagian ujung kiri dan kanan.
- Inisialisasi juga fungsi void `_decrementCounter()` yang akan mengurangi nilai `_counter`.
- Menambah conditional yang akan menampilkan tulisan GENAP berwarna merah jika counter nilainya genap, dan GANJIL berwarna biru jika counter bernilai ganjil.
- Melakukan binding dengan memanggil fungsi `_decrementCounter()` ketika tombol "-" ditekan, dan memanggil `_incrementCounter()` saat tombol "+" ditekan.
- Melakukan wrap tombol "-" dengan widget Visibility, sehingga ketika counter kurang atau sama dengan nol, tombol "-" akan menjadi invisible.

____

## Tugas 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

`Navigator.push` secara prinsipnya akan menumpuk route pada stack dan tidak menghapus route sebelumnya, sehingga kita dapat kembali ke route sebelumnya dengan memanfaatkan Navigator. Sedangkan `Navigator.pushReplacement` akan mengganti route saat ini (me-replace), sehingga route sebelumnya akan dihapus dari Stack dan kita tidak dapat kembali ke route sebelumnya.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `Scaffold` adalah widget utama pada Flutter untuk membuat halaman utama. Biasanya memiliki beberapa parameter seperti app bar, body, dan floating action bar.
- `Text` berfungsi untuk menampilkan teks.
- `Layout`: Center, Row, Column, berguna untuk mengatur tata letak dari widget.
- `Drawer` berfungsi untuk menampilkan panel navigasi antar halaman.
- `Container` berfungsi sebagai 'container' yang berguna untuk menampung atau memisahkan widget lain.
- `Padding` berfungsi untuk menambah space kosong di antara widget lain.
- `ListTile` berfungsi untuk menampilkan list yang clickable.
- `TextFormField` sebagai field input teks pada form.
- `TextButton` berfungsi sebagai button untuk submit form
- `AlertDialog` berfungsi untuk menampilkan popup dialog.
- `Icon` adalah widget untuk menampilkan icon.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

- onPressed
- onTap
- onChanged
- onSaved

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Cara kerja Navigator dalam memanage dan mengganti halaman dari aplikasi Flutter adalah dengan memanfaatkan struktur data Stack dan memanggil method routing yang sesuai kebutuhan, seperti `push`, `pushReplacement`, dan lain-lain.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat file `form_budget.dart` untuk menampilkan halaman form budget.
- Pada halaman tersebut, dibuat form dengan atribut judul, nominal, jenis, dan tanggal.
- Mengimplementasi masing-masing field pada form dengan memanfaatkan widget Padding, Icon, ListTile, Text Button, dan AlertDialog.
- Membuat file `data_budget.dart` untuk menampilkan judul, nominal, jenis, dan tanggal yang telah ditambahkan pada `form_budget`.
- `data_budget.dart` memiliki atribut List untuk menampung masing-masing input judul, nominal, jenis, dan tanggal, serta memiliki method addBudget yang akan dipanggil ketika submit form pada `form_budget`, yang berfungsi untuk memasukkan masing-masing field ke masing-masing list.
- Membuat file `drawer.dart` dan digunakan untuk refactoring dan memindahkan drawer dari `main.dart` ke dalam file terpisah.

____

## Tugas 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa. Namun hal tersebut bukan merupakan best practice sehingga tidak disarankan. Lebih disarankan untuk inisiasi model terlebih dahulu untuk memudahkan serialisasi data. Terlebih lagi, untuk app yang besar dan kompleks, menampung data tanpa membuat model akan cenderung lebih sulit, repetitif, dan lebih rentan terhadap eror, sehingga model akan lebih membuat pengambilan data lebih terstruktur.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `Scaffold` adalah widget utama pada Flutter untuk membuat halaman utama. Biasanya memiliki beberapa parameter seperti app bar, body, dan floating action bar.
- `Text` berfungsi untuk menampilkan teks.
- `Layout`: Center, Row, Column, berguna untuk mengatur tata letak dari widget.
- `Drawer` berfungsi untuk menampilkan panel navigasi antar halaman.
- `Container` berfungsi sebagai 'container' yang berguna untuk menampung atau memisahkan widget lain.
- `Padding` berfungsi untuk menambah space kosong di antara widget lain.
- `Navigator` berfungsi untuk melakukan routing dan berpindah antar page.
- `Checkbox` berfungsi untuk menampilkan checkbox.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

- Untuk mengambil data dari internet, inisialisasi package http dengan memanggil `flutter pub add http` pada terminal
- Lalu menambahkan kode permission untuk mengakses internet pada `AndroidManifest.xml`
- Pada file dimana kita ingin mengambil data dari json, import package http agar bisa melakukan http request
- Menginisiasi `FutureBuilder` untuk melakukan fetch data setelah dilakukan pengambilan data json.
- Untuk menampilkan data tersebut, dapat dipanggil anonymous function yang akan mereturn widget berisi data.
- Ketika dalam proses pengambilan data dari http request, kita dapat memanfaatkan snapshot untuk mengecek apakah data sudah berhasil diambil atau tidak. Ketika dalam proses, atau `snapshot.data` masih null, kita dapat menampilkan `CircularProgressIndicator()` untuk menampilkan loading page.
- Data akan ditampilkan jika `snapshot.data` bukan null, dan data dapat ditampilkan pada page.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Mengorganisasi file-file pada lib dengan membuat folder model, page, dan utilities.
- Membuat file `watch_list.dart`, dan melakukan routing ke page tersebut pada drawer.
- Menambahkan dependensi http serta permission untuk mengakses internet pada `AndroidManifest.xml` agar dapat melakukan http request dan fetch data json.
- Membuat model mywatchlist serta file `fetch_mywatchlist.dart` untuk pengambilan dan fetch data json dari web heroku pada Tugas 3.
- Pada `watch_list.dart`, dibuat builder yang memanggil fungsi `fetchMywatchList()` dan memanfaatkan snapshot untuk menampilkan dan navigasi dari tiap judul film pada wathlist.
- Membuat file `watch_detail.dart` untuk menampilkan detail dari film yang akan ditampilkan jika judul pada `watch_list.dart` ditekan. Ditambahkan juga tombol back untuk kembali ke page sebelumnya.