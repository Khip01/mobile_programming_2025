# layout_flutter

A new Flutter project.


## Getting Started - Tugas Praktikum 1

### Praktikum 1: Membangun Layout di Flutter
Saya membuat project layout_flutter baru, melakukan styling beberapa widget dan tampilan dan hasilnya adalah seperti berikut,
[![title_section](readme_assets/title_section.png)]()

### Praktikum 2: Implementasi button row
Setelah itu saya menambahkan styling widget baru untuk menampilkan baris tombol CALL, ROUTE, dan SHARE seperti berikut,

[![button_section_column](readme_assets/button_section_column.png)]()

### Praktikum 3: Implementasi text section
Saya melakukan styling widget baru dengan menambahkan text description section dari halamannya seperti berikut,

[![text_description_section](readme_assets/text_description_section.png)]()

### Praktikum 4: Implementasi image section
Saya membuat folder assets di root project saya lalu menyimpan image mountain.jpeg seperti berikut,

[![image_preview_dir](readme_assets/image_preview_dir.png)]()

Tak lupa juga untuk menambahkan path nya di pubspec.yaml

[![image_preview_pub](readme_assets/image_preview_pub.png)]()

Setelah itu saya melakukan styling widget lagi untuk menambahkan widget image preview di layar, dan hasilnya akan menjadi seperti berikut,

[![image_preview_overflow](readme_assets/image_preview_overflow.png)]()

Terlihat jika widget saya terjadi overflow, itu terjadi karena memang saya menggunakan `Column()` untuk styling dan menyusun widget secara vertikal dan sebagain konten dari widget tertutup dan tidak dapat terlihat oleh pengguna. 

Maka penyelesaiannya cukup mudah, kita ubah `Column()` menjadi `ListView()` agar layar dapat discroll, sehingga konten widget yang tertutup bisa ditampilkan/tidak tertindih, dan hasilnya seperti berikut,

[![image_preview_fix](readme_assets/image_preview_fix.png)]()


## Getting Started - Tugas Praktikum 2

### Praktikum 5: Membangun Navigasi di Flutter
> [!WARNING]
> Disini saya **tidak** membuat project baru bernama "belanja", tetapi saya akan melanjutkan project yang sebelumnya telah dibuat, yaitu project "layout_flutter".

Jadi saya akan melakukan beberapa hal di project ini, diantaranya:
- **pembuatan routing** dengan menggunakan `navigator`
- **pembuatan listview** di halaman home terlebih dahulu
- dilanjutkan dengan **pembuatan gridview** di halaman home (menggantikan listview yang telah dibuat)
- **menerapkan Hero()** widget

Pertama tama saya akan membuat route terlebih dahulu untuk masing masing halaman (`home_page.dart` dan `item_page.dart`) seperti berikut,

[![routing_code](readme_assets/routing_code.png)]()

Lalu saya akan membuat model/object dari item yang saya miliki seperti berikut,

[![item_model_code](readme_assets/item_model_code.png)]()

Setelah itu saya membuat tampilan list menggunakan `ListView.builder()`

[![list_view_style](readme_assets/list_view_style.png)]()

Setelah itu saya menambahkan tampilan grid kedalam aplikasi saya, menjadi seperti berikut,

[![grid_view_style](readme_assets/grid_view_style.png)]()

Setelah itu saya juga selesai untuk menambahkan `Hero widget`, untuk hasil akhirnya adalah seperti berikut,

[![hero_grid_list_result](readme_assets/hero_grid_list_result.gif)]()

Lalu saya juga mengubah konfigurasi routing menjadi menggunakan GoRouter (paket flutter resmi dari pub.dev), dan berikut adalah cuplikan kodenya,

[![gorouter_code](readme_assets/gorouter_code.png)]()

Dan berikut adalah pada saat go router dipanggil untuk menampilkan halaman baru,

[![gorouter_code](readme_assets/gorouter_call_code.png)]()
