# master_plan

A new Flutter project.

## Praktikum 1
Saya sudah selesai membuat beberapa direktori dan file seperti ini, 
![[Pasted image 20251115000129.png]]

Dan pada saat dijalankan akan menjadi seperti ini hasilnya,
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Pasted image 20251115000702.png" style="max-height: 500;"/>
</div>

## Tugas Praktikum 1
1. **Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?**
**Jawab**
Sebenarnya hal itu dilakukan untuk mengelompokkan kode berdasarkan komponennya, misalnya di langkah 4 itu kita mengelompokkan berdasarkan komponen model nya menjadi satu (agar pada saat import model kita mendapatkan semua modelnya).

2. **Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?**
**Jawab**
Karena pada saat dilakukan instansiasi Plan(), object Plan() tersebut hanyalah inisialisasi awal dari isi variabel plan yang kosong, dan object tersebut pasti tidak akan diubah-ubah. Untuk memberikan performa kode yang lebih efisien maka dari itu kita berikan const.  

3. **Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!**
**Jawab**
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Screencast_20251115_153852.gif" style="max-height: 500;"/>
</div>
Terlihat jika saya sudah selesai membuat sebuah aplikasi yang bisa
- menambahkan banyak Task di sebuah plan dengan menggunakan state
- membuat sebuah list yang dinamis
- menjadikan Plan dan Task menjadi object yang bisa diubah ubah secara dinamis
- mengubah checkbox dicentang/tidak menggunakan state

4. **Apa kegunaan method pada Langkah 11 dan 13 dalam _lifecyle state_ ?**
**Jawab**
**Langkah 11:**
Kegunaannya untuk inisialiasi Controller pada saat halaman dimuat pertama kali.
**Langkah 12:**
Kegunaannya untuk membuang Controller pada saat halaman akan ditutup/keluar dari halaman. 
Karena di flutter Controller yang tidak dibuang akan terus menerus ada selama aplikasi dinyalakan, dan ketika Controller baru dibuat kembali, maka akan ada lebih dari 1 Controller yang sedang menumpuk (karena tidak dibuang). 


## Praktikum 2
Saya sudah melakukan praktikum 2 dan berikut adalah hasilnya,
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Pasted image 20251115161654.png" style="max-height: 500;"/>
</div>


## Tugas Praktikum 2
1. **Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?** \
**Jawab** \
Yang dimaksud dari InheritedWidget disini adalah widget dasar dari flutter untuk mempermudah kita untuk berkomunikasi dengan widget turunan/properti yang ada dibawah widget tree induk.
Lalu, mengapa disini kita menggunakan InheritedNotifier? Itu karena kita ingin memberikan notifikasi perubahan/mengabari perubahan ke properti yang ada dibawah tree dari induk, dalam kasus ini propertinya adalah class List\<Task>. 
Jadi state dari properti List\<Task> tadi akan berubah ketika class induk yaitu Plan() telah mengalami perubahan.

2. **Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?** \
**Jawab** \
Itu adalah method sederhana dari class Plan(), adalah sebuah method getter untuk mendapatkan hasil yang diinginkan, diantaranya:
- untuk mendapatkan total task yang telah selesai
- untuk mendapatkan string yang telah diinterpolasi dan disesuaikan

3. **Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!** \
**Jawab**
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Screencast_20251115_163411.gif" style="max-height: 500;"/>
</div>
Terlihat jika saya sudah berhasil mengimplementasikan,
- menggunakan ValueNotifier sebagai pengelola state sederhana dari Plan()
- menambahkan footer teks yang sudah dimodifikasi dan disesuaikan
- merefactor state manajemen yang tadinya menggunakan setState menjadi ValueNotifier/Provider

## Praktikum 3
Saya sudah melakukan praktikum 3 dan hasilnya adalah seperti berikut,
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Pasted image 20251115175547.png" style="max-height: 500;"/>
</div>

## Tugas Praktikum 3
1. **Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!**

[![task](readme_assets/Pasted%20image%2020251115175658.png)]()

**Jawab** \
Jadi menurut saya, gambar tersebut menggambarkan tentang bagaimana WidgetTree disusun pada saat kita melakukan Navigator.push() atau berpindah halaman dari PlanCreatorScreen ke PlanScreen. Itu menggambarkan bagaimana bentuk WidgetTree setelah dilakukannya Navigator.push(). 
Yang dimana setelah melakukan Navigator.push(), WidgetTree awal (layar PlanCreatorScreen) akan di timpa dengan WidgetTree tujuannya (layar PlanScreen). 

2. **Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!** \
**Jawab** \
Berikut adalah hasil dari seluruh percobaan sampai dengan langkah 14 saya (dan juga beberapa perbaikan kode yang hasilnya tidak sesuai harapan),
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="readme_assets/Screencast_20251115_180336.gif" style="max-height: 500;"/>
</div>
