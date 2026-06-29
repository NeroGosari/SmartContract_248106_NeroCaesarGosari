# SmartContract_248106_NeroCaesarGosari
<H1>Deskripsi</H1><br>
Project ini bertujuan untuk membuat simulasi sistem peminjaman buku perpustakaan menggunakan Solidity pada Remix IDE. Kasus yang digunakan adalah <b>Sistem Peminjaman Buku</b> agar siswa yang inin meminjam buku bisa mengecek apakah buku yang ingin dipinjam masih tersedia atau tidak.<br>
<H1>Tujuan</H1><br>
Smart contract ini dibuat sebagai tugas pembelajaran untuk memahami konsep dasar Blockchain dan Solidity, meliputi:<br>
1. Constructor<br>
2. Struct<br>
3. Mapping<br>
4. Function<br>
5. Require<br>
6. Event<br>
7. msg.sender<br>
<H1>Fitur Yang Disediakan</H1><br>
1. Menambahkan data buku<br>
2. Meminjam buku<br>
3. Mengembalikan buku<br>
4. Melihat status buku<br>
5. Menampilkan alamat wallet peminjam<br>
6. Mencegah peminjaman buku yang sedang dipinjam<br>
7. Mencatat aktivitas menggunakan Event<br>
<h1>Cara Menjalankan</h1><br>
1. Buka Remix IDE.<br>
2. Import file SmartLibrary.sol.<br>
3. Compile smart contract.<br>
4. Deploy contract menggunakan Remix VM.<br>
5. Tambahkan data buku melalui fungsi addBook().<br>
6. Jalankan fungsi borrowBook() untuk meminjam buku.<br>
7. Gunakan akun (wallet) lain untuk mencoba meminjam buku yang sama (transaksi akan ditolak).<br>
8. Jalankan fungsi returnBook() menggunakan wallet peminjam.<br>
9. Lihat status buku menggunakan fungsi getBook() atau getBorrower().<br>
