void main() {
  // ---------------------------------- langkah 1
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // ---------------------------------- langkah 2
  // Setelah di run, hasilnya adalah seperti ini:
  /**
   * (first, last, a: 2, b: true)
   */
  // Terlihat ada tipedata baru yang dimana bisa menampung beberapa tipe data
  // sekaligus. Dan juga ada penanda a: dan b: yang menandakan bahwa itu adalah
  // named parameter.

  // ---------------------------------- langkah 3
  Record recordResult = tukar((19, 45));
  print(recordResult);
  // Pada saat dijalankan hasilnya seperti ini:
  /**
   * (45, 19)
   */
  // Jadi dari fungsi ini, kita tahu bahwa tipedata Record itu bisa digunakan
  // sebagai parameter ataupun return value.

  // ----------------------------------- langkah 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa; // <---- error dikarenakan belum diinisialisasi
  (String, int) mahasiswa = ("Akhmad Aakhif Athallah", 2341720071);
  print(mahasiswa);

  // Maka hasilnya akan menjadi seperti berikut:
  /**
   * (Akhmad Aakhif Athallah, 2341720071)
   */
  // Terlihat jika saya bisa mendeklarasikan variabel dengan tipedata Record.

  // ---------------------------------- langkah 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  // Terlihat jika hasil outputnya adalah seperti berikut:
  /**
   * first
   * 2
   * true
   * last
   */

  // lalu saya coba ubah salah satu valuenya menjadi Nama dan NIM 
  mahasiswa2 = ("Akhmad Aakhif Athallah", a: 2341720071, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'Akhmad Aakhif Athallah'
  print(mahasiswa2.a); // Prints 2341720071  

  // Dan outputnya adalah sebagai berikut:
  /**
   * Akhmad Aakhif Athallah
     2341720071
   */
}

// ---------------------------------- langkah 3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
