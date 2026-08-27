# Prodigy Roleplay Indonesia — Paket Baru

## Isi
- `index.html`: halaman Home dan Ped Store.
- `login.html`: Login, Daftar, dan tombol Google OAuth.
- `supabase-schema.sql`: database awal Supabase.
- `assets/style.css`: CSS modern dan responsif.
- `assets/auth.js`: autentikasi Supabase.

## Setup
1. Jalankan `supabase-schema.sql` di Supabase SQL Editor.
2. Aktifkan Email dan Google pada Authentication > Providers.
3. Atur Site URL dan Redirect URLs.
4. Upload semua file ke hosting; jangan gunakan `file://` untuk login Google.

Service role key tidak digunakan dalam paket ini.
