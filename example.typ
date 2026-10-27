#import "sewagati.typ": *

#show: sewagati.with(
  title: "Judul Pengabdian Masyarakat",
  title-en: "English Title",
  authors: (
    (name: "Penulis Pertama", affiliation: 1, corresponding: true),
    (name: "Penulis Kedua", affiliation: 2),
    (name: "Penulis Ketiga", affiliation: 3),
  ),
  affiliations: (
    "Afiliasi Penulis Pertama",
    "Afiliasi Penulis Kedua",
    "Afiliasi Penulis Ketiga",
  ),
  corresponding: (
    name: "Penulis Pertama",
    affiliation: "Afiliasi penulis koresponden, dilengkapi dengan nama laboratorium apabila ada",
    email: "xxxxxx@xxxx",
  ),
  volume: "vol(issue)",
  year: "tahun",
  doi: "xx.xxxx/xxxxx",
  dates: (
    submitted: "dd-mm-yyyy",
    reviewed: "dd-mm-yyyy",
    accepted: "dd-mm-yyyy",
    published: "dd-mm-yyyy",
  ),
  short-author: "Nama belakang penulis pertama",
  abstract-id: [
    Abstrak berisi keseluruhan kegiatan secara ringkas: permasalahan mitra, solusi yang diterapkan, hasil ketercapaian program, serta keberlanjutan program. Panjang maksimal 250 kata.
  ],
  keywords-id: ("Alfa", "Beta", "Kompleksitas"),
  abstract-en: [
    The abstract summarizes the whole program: the partner problem, the solution applied, the achieved results, and the program's sustainability. Maximum 250 words.
  ],
  keywords-en: ("Alpha", "Beta", "Complexity"),
)

= Pendahuluan

Artikel ditulis pada kertas A4 (210 mm $times$ 297 mm). Panjang naskah yang disarankan adalah 6 sampai 10 halaman dengan jenis huruf _Times New Roman_. Bagian pendahuluan ditulis secara komprehensif dan mengalir dalam satu kesatuan tanpa pemisahan subbab.

Pada paragraf-paragraf awal, pendahuluan memuat latar belakang kegiatan, kondisi eksisting mitra sasaran, serta identifikasi permasalahan utama yang mendasari pentingnya program pengabdian kepada masyarakat (Abmas) ini. Uraian didukung oleh data atau observasi lapangan yang memadai.

Setelah permasalahan diuraikan, narasi dilanjutkan dengan solusi yang ditawarkan oleh tim pengabdi, misalnya metode pendekatan, pelatihan, pendampingan, atau transfer teknologi. Pada bagian akhir pendahuluan, penulis menegaskan target luaran atau hasil nyata yang ingin dicapai.

= Tinjauan Pustaka

Bagian ini menguraikan konsep, teori, teknologi, atau hasil penelitian terdahulu yang mendasari rancangan solusi. Hanya landasan teori yang relevan dan diterapkan langsung dalam kegiatan yang disertakan.

Seluruh referensi yang dikutip dalam badan naskah harus dituliskan dalam Daftar Pustaka sesuai urutan kutipan, seperti @chen2016. Referensi lain yang dikutip: @schmalstieg1997, @bpom2012, dan @box1978.

Berikut contoh penulisan gambar, tabel, singkatan, satuan, dan persamaan.

== Gambar

Resolusi gambar harus jelas dan tidak pecah. Jika terdapat huruf dalam gambar, ukurannya harus cukup besar untuk dibaca. Berikan label dan satuan pada setiap sumbu serta legenda bila diperlukan.

#figure(
  image("assets/image1.png", width: 55%),
  caption: [Ini adalah contoh penulisan caption gambar.],
) <fig-contoh>

Posisi judul gambar diletakkan di bawah gambar dengan ukuran huruf 10 pt, diketik dengan huruf kapital di awal kalimat. Jika gambar memiliki dua bagian, sertakan label (a) dan (b).

#figure(
  image("assets/image2.png", width: 85%),
  caption: [Terdapat dua gambar; (a) gambar kesatu; (b) gambar kedua.],
)

== Tabel

Posisi judul tabel diletakkan di atas tabel, dipusatkan (justify) dengan ukuran huruf 10 pt, diketik dengan huruf kapital di awal kata.

#figure(
  caption: [Contoh judul untuk tabel],
  kind: table,
  table(
    columns: (auto, auto, auto),
    align: (left, center, center),
    table.hline(),
    table.header(
      [*Dimensi*], [*Ukuran Nilai*], [*Angka*],
    ),
    table.hline(),
    [Sudut dimensi], [8°], [-],
    [Kedalaman], [50 m], [-],
    [Lebar], [4 mm], [-],
    [Ketinggian], [46 mm], [-],
    [Jarak], [60 mm], [100 mm],
    [Sudut], [180°], [145°],
    table.hline(),
  ),
)

== Singkatan dan Akronim

Singkatan dan akronim harus didefinisikan saat pertama kali muncul dalam badan naskah, meskipun sudah didefinisikan dalam abstrak. Jangan menggunakan singkatan dalam judul kecuali tidak dapat dihindari.

== Satuan

Disarankan menggunakan Satuan Internasional (SI), atau _International System of Units_.

== Persamaan

Persamaan diberi nomor berurutan di sisi kanan. Contoh persamaan persentase peningkatan dan varians sampel:

$ P = (N_"post" - N_"pre") / N_"pre" times 100 $ <eq-persen>

$ s^2 = (sum_(i=1)^n (X_i - overline(X))^2) / (n - 1) $ <eq-varians>

= Metode Kegiatan

Bagian ini menjelaskan bagaimana program Abmas dilaksanakan secara runtut, dilengkapi diagram alur kegiatan. Uraikan lokasi, waktu pelaksanaan, kriteria dan jumlah peserta atau mitra, tim pelaksana, instrumen kegiatan, serta prosedur pengumpulan dan evaluasi data.

#figure(
  image("assets/image3.png", width: 90%),
  caption: [Contoh diagram alur kegiatan Abmas.],
) <fig-alur>

= Hasil dan Diskusi

Bagian ini memuat hasil pelaksanaan program Abmas dan analisis capaian terhadap luaran atau target yang diharapkan. Bagian ini disarankan mencakup kurang lebih 50% dari keseluruhan naskah dan membahas hal-hal berikut:

+ *Dampak dan perubahan*: dampak positif, peningkatan pemahaman, perubahan perilaku, atau keterampilan mitra, didukung instrumen ukur yang jelas seperti data _pre-test_ dan _post-test_.
+ *Kesesuaian dengan solusi*: sejauh mana hasil menjawab permasalahan utama mitra yang diuraikan pada pendahuluan.
+ *Kendala dan solusi lapangan*: hambatan yang muncul selama pelaksanaan beserta mitigasinya.
+ *Keberlanjutan program*: strategi agar program dapat terus berjalan dan dimanfaatkan mitra setelah kegiatan berakhir.
+ *Komparasi dengan literatur terdahulu*: perbandingan temuan dengan studi serupa.

= Kesimpulan dan Saran

Kesimpulan menyampaikan hasil utama yang menjawab judul dan menyelesaikan permasalahan mitra. Kesimpulan tidak menduplikasi isi abstrak atau pendahuluan. Saran yang diberikan bersifat potensial dan berkelanjutan.

= Deklarasi

== Penggunaan AI

Penulis menyatakan bahwa tidak ada teknologi kecerdasan buatan (AI) generatif yang digunakan dalam penulisan dan penyusunan naskah ini. _Jika digunakan_, sebutkan nama alat dan tujuannya, lalu nyatakan bahwa penulis bertanggung jawab atas keakuratan dan orisinalitas isi.

== Kontribusi Penulis

Uraikan kontribusi setiap penulis, disarankan menggunakan format CRediT (_Contributor Roles Taxonomy_):

+ J. Doe: Konseptualisasi kegiatan, metodologi, pelaksanaan lapangan, penulisan (draf asli).
+ A. Smith: Analisis data evaluasi, penulisan (tinjauan dan penyuntingan).
+ Lee: Supervisi program, administrasi proyek, akuisisi pendanaan.

== Sumber Pendanaan

Sebutkan nama lembaga pendana beserta nomor kontrak atau surat keputusan (SK). Jika kegiatan dana mandiri, nyatakan bahwa kegiatan tidak menerima pendanaan dari lembaga eksternal.

== Pernyataan Konflik Kepentingan

Nyatakan ada atau tidaknya hubungan finansial, komersial, institusional, atau personal yang dapat memengaruhi objektivitas kegiatan dan penulisan naskah.

= Ucapan Terima Kasih

Sampaikan apresiasi kepada penyandang dana, instansi, atau lembaga yang mendukung kegiatan Abmas ini.

= Daftar Pustaka

#bibliography("refs.bib", title: none)
