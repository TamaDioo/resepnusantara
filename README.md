# 🍳 Resep Nusantara App

Aplikasi Flutter bertema resep masakan Nusantara yang menampilkan landing page, katalog resep, dan detail hidangan dalam tampilan yang responsif untuk mobile, tablet, desktop, dan web. Dibangun dengan **Flutter** dan **Material 3**, aplikasi ini menghadirkan antarmuka modern dengan _dark theme_ elegan beraksen kuning, serta desain yang sepenuhnya responsif untuk dijalankan di berbagai perangkat. Pengguna dapat masuk melalui landing page, melihat daftar resep, lalu membuka detail resep untuk membaca informasi hidangan secara lebih lengkap.

---

## 🌟 Sorotan Fitur

- 📱 **Multi-Platform Ready**: Tampilan UI otomatis menyesuaikan ukuran layar, baik saat dibuka di _smartphone_ (portrait/landscape) maupun di _browser_ desktop.
- 🎨 **Desain Modern & UI/UX Intuitif**: Menggunakan palet warna gelap (`#191919`) dengan aksen kuning (`#FDC912`) yang memanjakan mata, lengkap dengan animasi transisi _Hero_ yang mulus.
- 🍲 **Koleksi Resep Autentik**: Menyajikan detail lengkap mulai dari asal daerah, estimasi waktu masak, daftar bahan (dengan visual interaktif), hingga langkah-langkah memasak.
- ❤️ **Fitur Interaktif**: Tombol _Favorite_ dan navigasi perluasan teks (_Show more/less_) pada detail resep.

## 🛠️ Stack Teknologi

- **Framework**: [Flutter](https://flutter.dev/)
- **Bahasa**: [Dart](https://dart.dev/)
- **Desain Sistem**: Material 3 dengan Custom Typography (Verdana)

## Struktur Singkat Project

- `lib/main.dart` - titik masuk aplikasi.
- `lib/screens/` - halaman landing, beranda, dan detail resep.
- `lib/model/recipe.dart` - data model serta daftar resep.
- `images/` - aset gambar yang digunakan aplikasi.

## 📋 Daftar Resep (Sneak Peek)

Beberapa resep legendaris yang bisa ditemukan dalam aplikasi ini:

- Nasi Goreng Spesial 🇮🇩
- Sate Ayam Madura 🍢
- Soto Ayam Lamongan 🍲
- Rawon Surabaya 🥩
- ...dan hidangan nusantara lainnya!

## 🚀 Cara Menjalankan Secara Lokal

Ikuti langkah-langkah berikut untuk mencoba aplikasi ini di perangkat Anda:

1. **Clone repositori ini:**
   ```bash
   git clone https://github.com/TamaDioo/resepnusantara
   cd resepnusantara
   ```
2. **Pastikan Flutter sudah terpasang dan perangkat/emulator tersedia.**
3. **Instal semua dependensi:**
   ```bash
   flutter pub get
   ```
4. **Jalankan aplikasi (pilih perangkat yang tersedia):**
   ```bash
   flutter run
   ```

## ⚒️ Build Untuk Platform Tertentu

- Android: `flutter build apk`
- iOS: `flutter build ios`
- Web: `flutter build web`
- Desktop: `flutter build windows` / `macos` / `linux`

## 👨‍💻 Catatan

Aplikasi ini saya buat sebagai sarana eksplorasi dan portofolio dalam pengembangan aplikasi lintas platform (_cross-platform_) yang interaktif dan responsif menggunakan ekosistem Flutter. Project ini juga masih bisa dikembangkan lebih lanjut, misalnya dengan pencarian resep, kategori yang benar-benar interaktif, favorit, atau penyimpanan data lokal.
