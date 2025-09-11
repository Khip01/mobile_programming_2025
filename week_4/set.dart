void main() {
  // ------------------------------------------------------- Langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // ------------------------------------------------------- Langkah 2
  // Output dari program tersebut adalah:
  // {fluorine, chlorine, bromine, iodine, astatine}
  // Tidak ada yang error pada kode tersebut.
  // Set adalah kumpulan elemen yang tidak berurutan.

  // ------------------------------------------------------- Langkah 3
  // membuat variabel set baru
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  // Hasilnya adalah sepeerti ini:
  /*
    {}
    {}
    {} <--- Namun ini adalah Map, bukan Set
  */

  // Menambahkan Nama dan NIM pada kedua variabel set "names1" dan "names2"
  names1.add('Akhmad Aakhif Athallah');
  names1.add('2341720071');
  names2.addAll({'Akhmad Aakhif Athallah', '2341720071'});

  print(names1);
  print(names2);

  // Maka putputnya akan menjadi seperti berikut:
  /*
    {Akhmad Aakhif Athallah, 2341720071}
    {Akhmad Aakhif Athallah, 2341720071}
  */

  
}