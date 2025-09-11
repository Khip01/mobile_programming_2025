void main() {
  // ---------------------------------- langkah 1
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  };

  print(gifts);
  print(nobleGases);

  // ---------------------------------- langkah 2
  // Kode di atas tidak ada yang error.
  // hasil outputnya adalah sebagai berikut:
  /*
    {first: partridge, second: turtledoves, fifth: 1}
    {2: helium, 10: neon, 18: 2}
  */


  // ---------------------------------- langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';


  // Hasil outputnya adalah sebagai berikut:
  /*
    {first: partridge, second: turtledoves, fifth: 1}
    {2: helium, 10: neon, 18: 2}
  */
  // Terlihat jika saya bisa mengubah value dari key tertentu pada map tersebut.
  // Dan disini map dari mhs1 dan mhs2 nya belum ditampilkan


  // Menambahkan nama dan NIM pada tiap variabel (gifts, nobleGases, mhs1, dan mhs2)
  gifts['name'] = 'Akhmad Aakhif Athallah';
  gifts['NIM'] = '2341720071';
  nobleGases[5] = 'Akhmad Aakhif Athallah';
  nobleGases[6] = '2341720071';
  mhs1['name'] = 'Akhmad Aakhif Athallah';
  mhs1['NIM'] = '2341720071';
  mhs2[1] = 'Akhmad Aakhif Athallah';
  mhs2[2] = '2341720071';
  
  // menampilkan outputnya
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
  // Maka outputnya akan menjadi seperti berikut:
  /*
    {first: partridge, second: turtledoves, fifth: golden rings, name: Akhmad Aakhif Athallah, NIM: 2341720071}
    {2: helium, 10: neon, 18: argon, 5: Akhmad Aakhif Athallah, 6: 2341720071}
    {name: Akhmad Aakhif Athallah, NIM: 2341720071}
    {1: Akhmad Aakhif Athallah, 2: 2341720071}
  */
}