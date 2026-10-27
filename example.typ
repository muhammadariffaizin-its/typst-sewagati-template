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
    Jumlah kata abstrak dibatasi antara 150 hingga 200 kata dan harus secara ringkas menyatakan apa yang dilakukan, bagaimana itu dilakukan, hasil utama, dan signifikansinya. Abstrak harus jelas, deskriptif, dan memberikan gambaran singkat masalah yang diteliti. Abstrak meliputi: alasan pemilihan topik atau pentingnya topik penelitian, metode penelitian, dan ringkasan hasil. Abstrak harus diakhiri dengan komentar tentang pentingnya hasil atau kesimpulan singkat. Mohon perhatikan penggunaan huruf kapital, huruf miring, dan istilah-istilah asing. Abstrak akan muncul kemudian di berbagai jurnal abstrak dan harus berisi informasi paling kritis dari makalah ini.
  ],
  keywords-id: ("Alfa", "Beta", "Kompleksitas"),
  abstract-en: [
    The abstract word count is limited to between 150 and 200 words and must concisely state what was done, how it was done, the main results, and their significance. The abstract must be clear, descriptive, and provide a brief overview of the problem being investigated. It should include: the rationale for choosing the topic or the importance of the research, the research methods, and a summary of the findings. The abstract must conclude with a comment regarding the significance of the results or a brief conclusion. Please pay close attention to capitalization, italics, and foreign terms. The abstract will subsequently appear in various abstracting journals and must contain the most critical information from the paper.
  ],
  keywords-en: ("Alpha", "Beta", "Complexity"),
)

= Pendahuluan

Artikel ditulis dalam ukuran kertas A4 (210mm kali 297mm). Panjang makalah biasa yang disarankan adalah 6 sampai 10 halaman menggunakan jenis huruf _Times New Roman_. Bagian pendahuluan ini ditulis secara komprehensif dan mengalir dalam satu kesatuan tanpa pemisahan subbab. Penulis dapat menggunakan dokumen ini sebagai _template_.

Pada paragraf-paragraf awal, pendahuluan harus memuat latar belakang kegiatan, kondisi eksisting mitra sasaran, serta identifikasi permasalahan utama yang mendasari pentingnya program Pengabdian kepada Masyarakat (Abmas) ini dilaksanakan. Uraian harus didukung oleh data atau observasi lapangan yang memadai.

Setelah menguraikan permasalahan, narasi dilanjutkan dengan pemaparan solusi permasalahan yang ditawarkan oleh tim pengabdi. Penulis harus mendeskripsikan secara jelas strategi kegiatan yang diimplementasikan (misalnya: metode pendekatan, pelatihan, pendampingan, atau transfer teknologi) guna memastikan solusi tersebut tepat sasaran dan mampu menyelesaikan masalah mitra.

Pada bagian akhir pendahuluan, penulis wajib menegaskan target luaran atau hasil nyata yang ingin dicapai dari pelaksanaan kegiatan. Selain itu, penulis sangat disarankan untuk menguraikan relevansi kegiatan dengan pencapaian _Sustainable Development Goals_ (SDGs). Jelaskan secara spesifik tujuan SDG mana yang didukung oleh program ini (misalnya: SDG 7 _Affordable and Clean Energy_, SDG 4 _Quality Education_, dsb.) serta dampak berkelanjutannya bagi masyarakat.

= Tinjauan Pustaka

Bagian ini menguraikan konsep, teori, teknologi, atau hasil penelitian terdahulu yang mendasari rancangan solusi untuk menyelesaikan permasalahan mitra sasaran. Penulis diwajibkan hanya menyertakan landasan teori yang relevan dan diaplikasikan langsung dalam kegiatan pengabdian kepada masyarakat (Abmas). Hindari pencantuman teori dasar, definisi umum, atau materi perkuliahan yang tidak berkaitan langsung dengan implementasi program di lapangan.

Seluruh referensi yang dikutip atau disitasi dalam badan naskah @chen2016, harus dituliskan dalam bab Daftar Pustaka sesuai urutan pengutipan. Contoh kutipan lain @schmalstieg1997 @bpom2012 @box1978. Penulisan Daftar Pustaka sangat disarankan menggunakan aplikasi manajemen referensi seperti Mendeley, EndNote, Zotero, atau lainnya.

Berikut adalah contoh penulisan gambar, Tabel, singkatan atau akronim, satuan, dan persamaan.

+ Gambar

  Resolusi gambar jelas dan tidak pecah. Bila terdapat huruf dalam gambar, maka huruf harus cukup besar untuk dapat dibaca. Jangan lupa untuk mencantumkan label, unit, untuk setiap sumbu dan legenda saat diperlukan.

  #figure(
    image("assets/image1.png", width: 55%),
    caption: [Ini adalah contoh penulisan caption gambar.],
  ) <fig-contoh>

  Posisi judul gambar (@fig-contoh) diletakkan di bawah gambar dengan ukuran huruf 10pt, diketik dengan huruf kapital di awal kalimat. Jika gambar Anda memiliki dua bagian, sertakan label (a) dan (b) seperti contoh di bawah ini.

  #figure(
    image("assets/image2.png", width: 85%),
    caption: [Terdapat dua gambar; (a) gambar kesatu; (b) gambar kedua.],
  ) <fig-dua>

+ Tabel

  Posisi judul tabel diletakkan di atas tabel. Judul tabel harus dipusatkan (_justify_) dengan ukuran huruf 10pt, diketik dengan huruf kapital di awal kata.

  #figure(
    caption: [Contoh judul untuk tabel],
    kind: table,
    table(
      columns: (auto, auto, auto),
      align: (center, center, center),
      table.hline(),
      table.header(table.cell(rowspan: 2, align: center + horizon)[*Dimensi*], table.cell(colspan: 2)[*Ukuran*], [*Nilai*], [*Angka*]),
      table.hline(),
      [Sudut dimensi], [8°], [-],
      [Kedalaman], [50 m], [-],
      [Lebar], [4 mm], [-],
      [Ketinggian], [46 mm], [-],
      [Jarak], [60 mm], [100 mm],
      [Sudut], [180°], [145°],
      table.hline(),
    ),
  ) <tab-contoh>

+ Singkatan dan akronim

  Singkatan dan akronim harus didefinisikan pertama kali saat singkatan tersebut muncul dalam badan naskah, meskipun sudah didefinisikan dalam Abstrak. Jangan menggunakan singkatan dalam judul kecuali mereka tidak dapat dihindari.

+ Satuan

  Sangat disarankan agar penulis dapat menggunakan Satuan Internasional (SI) atau _International System of Units_.

+ Persamaan

  $ P = (N_"post" - N_"pre") / N_"pre" times 100 $ <eq-persen>

  $ s^2 = (sum_(i=1)^n (X_i - overline(X))^2) / (n - 1) $ <eq-varians>

= Metode Kegiatan

Bagian ini berisi penjelasan bagaimana program Abmas dilaksanakan secara runtut. Sebaiknya bagian ini disertai dengan gambar alur (_flowchart_) metode kegiatan yang memuat tahapan perencanaan, pelaksanaan, serta evaluasi dan pelaporan. Jelaskan rincian lokasi, waktu pelaksanaan, kriteria dan jumlah peserta/mitra, tim pelaksana, instrumen kegiatan, serta prosedur pengumpulan data atau evaluasi.

#figure(
  image("assets/image3.png", width: 90%),
  caption: [Contoh diagram alur kegiatan Abmas.],
) <fig-alur>

= Hasil dan Diskusi

Bagian ini berisi uraian mengenai hasil dari pelaksanaan program Abmas dan analisa capaian program terhadap luaran atau target yang diharapkan.

Penulis sangat disarankan untuk tidak sekadar melaporkan kronologi atau daftar kegiatan yang telah diselesaikan. Bagian diskusi disarankan membahas secara mendalam hal-hal berikut:

+ *Dampak dan perubahan*: uraikan secara komprehensif mengenai dampak positif, peningkatan pemahaman, perubahan perilaku, atau peningkatan keterampilan yang dialami oleh mitra sasaran. Hal ini wajib didukung oleh instrumen ukur yang jelas (misalnya: perbandingan data _pre-test_ dan _post-test_, hasil observasi terstruktur, atau analisis kuesioner kepuasan mitra).
+ *Kesesuaian dengan solusi*: diskusikan bagaimana hasil yang diperoleh mampu menjawab permasalahan utama mitra yang telah diuraikan pada bagian Pendahuluan.
+ *Kendala dan solusi lapangan*: jelaskan hambatan atau tantangan tak terduga yang muncul selama pelaksanaan di lapangan beserta solusi atau mitigasi yang dilakukan.
+ *Keberlanjutan program (_sustainability_)*: berikan strategi mengenai bagaimana program pengabdian ini dapat terus berjalan atau dimanfaatkan oleh mitra setelah masa kegiatan Abmas berakhir.
+ *Komparasi dengan literatur terdahulu*: diskusikan temuan dan hasil Abmas dengan literatur lain yang serupa.

= Kesimpulan dan Saran

Kesimpulan harus menyampaikan hasil utama yang dapat menjawab judul dan menyelesaikan permasalahan utama mitra. Jangan menduplikasi isi Abstrak atau Pendahuluan. Penulis dapat menguraikan pentingnya program serta menyarankan penerapan yang potensial dan berkelanjutan.

= Deklarasi

== Deklarasi Penggunaan AI

Penulis wajib menyatakan dengan jujur apakah kecerdasan buatan (AI) atau teknologi berbasis AI (seperti _ChatGPT_, _Grammarly_, dll.) digunakan dalam penyusunan naskah ini. Jika menggunakan AI, penulis bertanggung jawab penuh atas keakuratan dan orisinalitas isi naskah.

Contoh (jika menggunakan): Selama penyusunan naskah ini, penulis menggunakan [Nama AI, misalnya: _ChatGPT_] secara terbatas untuk [tujuan, misalnya: menyunting tata bahasa dan menerjemahkan kalimat]. Penulis telah meninjau, memvalidasi, dan menyunting ulang konten yang dihasilkan oleh alat tersebut, serta bertanggung jawab penuh atas isi publikasi ini.

Contoh (jika tidak menggunakan): Penulis menyatakan bahwa tidak ada teknologi kecerdasan buatan (AI) generatif yang digunakan dalam penulisan dan penyusunan naskah ini.

== Kontribusi Penulis

Uraikan kontribusi spesifik dari masing-masing penulis dalam kegiatan Abmas maupun penulisan naskah. Sangat disarankan untuk menggunakan format CRediT (_Contributor Roles Taxonomy_).

+ J. Doe: Konseptualisasi kegiatan, Metodologi, Pelaksanaan lapangan, Penulisan (draf asli).
+ A. Smith: Analisis data evaluasi, Penulisan (tinjauan & penyuntingan).
+ Lee: Supervisi program, Administrasi proyek, Akuisisi pendanaan.

== Sumber Pendanaan

Bagian ini khusus menguraikan sumber dana secara eksplisit dan administratif. Sebutkan nama lembaga pendana beserta nomor kontrak atau surat keputusan (SK) jika ada. Jika tidak ada pendanaan eksternal, wajib dinyatakan.

Contoh (jika didanai): Kegiatan pengabdian kepada masyarakat ini didanai secara penuh oleh [Nama Lembaga Pendana, misalnya: DRPM, Kemendikbudristek] melalui skema hibah [Nama Skema Hibah] berdasarkan Surat Perjanjian Pelaksanaan/Kontrak Nomor: [Nomor Kontrak].

Contoh (jika dana mandiri): Kegiatan pengabdian kepada masyarakat ini dilaksanakan menggunakan dana mandiri dari tim penulis dan tidak menerima pendanaan dari lembaga/instansi eksternal mana pun.

== Pernyataan Konflik Kepentingan

Nyatakan apakah terdapat hubungan finansial, komersial, institusional, maupun personal yang dapat memengaruhi objektivitas atau menimbulkan bias dalam pelaksanaan kegiatan dan penulisan naskah.

Contoh (jika tidak ada): Para penulis menyatakan bahwa tidak ada konflik kepentingan yang berpotensi memengaruhi pelaksanaan kegiatan atau publikasi artikel ini.

Contoh (jika ada): [Nama Penulis] merupakan anggota direksi dari [Nama Perusahaan/Mitra] yang bertindak sebagai mitra sasaran dalam kegiatan ini. Namun, hal tersebut tidak memengaruhi netralitas hasil pelaksanaan dan evaluasi program pengabdian.

= Ucapan Terima Kasih

Sampaikan apresiasi resmi kepada pihak penyandang dana, instansi, atau lembaga yang mendukung kegiatan Abmas ini.

Format contoh: Pengabdian masyarakat ini didukung oleh Lembaga/Badan [Nama Institusi/Hibah] serta [Nama Mitra/Pihak Lain].

= Lampiran

Lampiran (seperti form kuesioner, dokumen legalitas, atau data pendukung lainnya) diletakkan di bagian ini, yaitu tepat sebelum bab Ucapan Terima Kasih.

= Daftar Pustaka

Format penulisan Daftar Pustaka yang digunakan pada jurnal Sewagati adalah sesuai dengan format _Vancouver style_. Daftar Pustaka harus disusun sesuai urutan pengutipan dalam badan artikel, bukan dalam urutan abjad A-Z.

#bibliography("refs.bib", title: none)
