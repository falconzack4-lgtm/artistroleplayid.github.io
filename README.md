# Prodigy Roleplay Indonesia — Website Lengkap

## Isi website
- Home / profil komunitas
- Ped Store dengan katalog dan keranjang
- Checkout WhatsApp (ubah nomor placeholder)
- Halaman Rules
- Form Whitelist menuju WhatsApp
- Form Support/Laporan menuju WhatsApp
- Admin menu untuk menambah, edit, hapus produk dan mengganti gambar

## Cara pakai
1. Ekstrak ZIP.
2. Buka `index.html` di browser.
3. Untuk online, unggah seluruh folder ke GitHub Pages, Netlify, atau hosting statis.

## Login admin
- Username: `ubuntu`
- Password: `fauzanganteng`

## Konfigurasi yang wajib diganti
Cari semua `6280000000000` di file HTML/JavaScript dan ubah menjadi nomor WhatsApp admin dalam format internasional, misalnya `6281234567890`.

## Gambar
Folder `assets` berisi gambar placeholder untuk Home dan ped. Ganti gambar dengan aset berizin/screenshot Anda sendiri untuk versi publik.

## Keamanan
Ini adalah website statis untuk demo atau awal pengembangan. Data produk tersimpan di browser dengan localStorage dan login admin tidak aman untuk produksi. Untuk penggunaan publik, gunakan Supabase/Firebase/backend database, storage cloud, autentikasi Google/Discord, serta role admin.
