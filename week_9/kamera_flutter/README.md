# kamera_flutter

A new Flutter project.

## Praktikum 1
Saya sudah menambahkan package `camera path_provider path` seperti berikut ini,
![[Pasted image 20251106145138.png]]

Lalu di praktikum 1 ini saya memberika n isi kode ini,
![[Pasted image 20251106170520.png]]

Dan berikut adalah hasilnya,
<div style="display: flex; justify-content: center; align-items: center;">
<img src="Pasted image 20251106170905.png" style="max-height: 500;"/>
<img src="Screenshot_2025-11-06-17-29-14-822_com.example.kamera_flutter.jpg" style="max-height: 500;"/>
</div>
Terlihat jika saya berhasil menggunakan kamera di aplikasi flutter saya.

## Praktikum 2
Saya melanjutkan project `kamera_flutter` saya, dan seperti inilah hasil pertamanya,
<div style="display: flex; justify-content: center; align-items: center;">
<img src="Screenshot_2025-11-06-19-37-58-094_com.example.kamera_flutter.jpg" style="max-height: 500;"/>
</div>

Jadi saya perbaiki menjadi seperti ini,
<div style="display: flex; justify-content: center; align-items: center;">
<img src="Screenshot_2025-11-06-19-56-41-788_com.example.kamera_flutter.jpg" style="max-height: 500;"/>
</div>

## Tugas Praktikum
1. **Jelaskan maksud void async pada praktikum 1?**
**Jawab**
Jadi contohnya pada kode berikut,
```dart
Future<void> main() async {
  ...
}
```
Fungsi dari `async` di function `main()` tersebut  adalah untuk menandai bahwa fungsi tersebut berjalan secara asinkron, yang artinya:
- function `main()` tersebut **bisa menunggu (menggunakan `await`)** tanpa menghentikan program lain
- Agar fungsi `async` **bisa mengembalikan sebuah `Future`**. 

2. Jelaskan fungsi dari anotasi @immutable dan @override ?
**Jawab**
- **`@immutable`** → Menandakan kelas **tidak boleh diubah** setelah dibuat (semua field harus `final`).
- **`@override`** → Menandakan method atau properti **menimpa (override)** dari superclass.
