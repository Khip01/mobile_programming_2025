void main() {
  // Mengubah list nya menjadi final
  final List list = [1, 2, 3];
  // mengecek apakah panjang list nya 3 elemen dan elemen ke 2 adalah 2 
  assert(list.length == 3);
  assert(list[1] == 2);

  // mencetak ke layar jika assert benar
  print(list.length);
  print(list[1]);

  // mengubah elemen ke 2 menjadi 1
  list[1] = 1;
  assert(list[1] == 1);

  // menampilkan ke layar
  print(list[1]);

  // ------------------------------------------------------- Langkah 2
  // Hasilnya akan 3, 2, 1
  // Tidak ada yang error.

  // ------------------------------------------------------- Langkah 3
  // mengubah indeks ke 5 menjadi null dari variabel list final
  // list[5] = null; // index ke 5  <----- ERROR: RangeError (index): Invalid value: Not in inclusive range 0..2: 5

  // mengubah index ke 1 dan ke 2 menjadi nama dan NIM
  list[1] = 'Akhmad Aakhif Athallah';
  list[2] = '2341720071';

  // menampilkan ke layar
  print(list[1]);
  print(list[2]);
  // print(list[5]); <-- ERROR

  // Outputnya akan menjadi seperti berikut:
  /**
      3
      2
      1
      Akhmad Aakhif Athallah
      2341720071
   */
}