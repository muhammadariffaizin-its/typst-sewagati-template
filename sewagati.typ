// Template naskah Jurnal SEWAGATI (Pengabdian kepada Masyarakat).
// Berkas tunggal: impor, lalu pasang sebagai show rule.
//
//   #import "sewagati.typ": *
//   #show: sewagati.with(
//     title: "Judul Pengabdian Masyarakat",
//     authors: (...),
//     ...
//   )
//
// Aturan dari pedoman penulis: A4, Times New Roman 12 pt, judul dan
// identitas penulis, abstrak maksimal 250 kata, 3-5 kata kunci, dan
// daftar pustaka Vancouver berurutan sesuai kutipan.

#let sewagati-font = "Times New Roman"
#let secondary-color = rgb("#0000FF")

// Nomor afiliasi penulis dalam bentuk superskrip, dengan tanda * bila koresponden.
#let author-mark(a) = {
  let nums = if type(a.affiliation) == array { a.affiliation } else { (a.affiliation,) }
  let marks = nums.map(str)
  if a.at("corresponding", default: false) { marks.push("*") }
  super[#marks.join(",")]
}

#let keywords-str(k) = if type(k) == array { k.join(", ") } else { k }

#let date-of(d, key) = if d == none { "dd-mm-yyyy" } else { d.at(key, default: "dd-mm-yyyy") }

#let sewagati(
  // Judul dan identitas
  title: "",
  title-en: none,
  // authors: (name: "", affiliation: 1 atau (1, 2), corresponding: false)
  authors: (),
  // affiliations: array string, urutan = nomor afiliasi (mulai 1)
  affiliations: (),
  // corresponding: (name: "", affiliation: "", email: "") atau none
  corresponding: none,
  // Informasi jurnal
  volume: "vol(issue)",
  year: "tahun",
  doi: none,
  // dates: (submitted:, reviewed:, accepted:, published:) atau none
  dates: none,
  // Untuk header halaman 2 dst: "Nama belakang penulis pertama"
  short-author: "",
  // Abstrak (maks. 250 kata) dan kata kunci (3-5 kata, dari yang umum)
  abstract-id: none,
  keywords-id: none,
  abstract-en: none,
  keywords-en: none,
  body,
) = {
  set document(title: title)

  set page(
    paper: "a4",
    margin: (top: 20mm, bottom: 20mm, left: 16mm, right: 16mm),
    header: context {
      let n = counter(page).get().first()
      if n > 1 {
        set text(size: 10pt)
        let label = [#n #h(0.5em) (#short-author), DKK.]
        if calc.odd(n) { align(right, label) } else { label }
        line(length: 100%, stroke: 0.5pt)
      }
    },
  )

  set text(font: sewagati-font, size: 10pt, lang: "id")
  set par(justify: true, leading: 0.65em)
  set block(spacing: 0.9em)

  // Judul bab (level 1) kapital, sub-bab (level 2) tebal
  show heading.where(level: 1): set heading(numbering: "1")
  show heading.where(level: 1): it => block(above: 1.2em, below: 0.8em, sticky: true)[
    #set text(size: 12pt, weight: "bold", fill: secondary-color)
    #let num = counter(heading).display(it.numbering)
    #box(width: 1cm)[#num]
    #upper(it.body)
  ]
  show heading.where(level: 2): set heading(numbering: "1.1")
  show heading.where(level: 2): it => block(above: 1em, below: 0.6em, sticky: true)[
    #set text(size: 12pt, weight: "bold", fill: secondary-color)
    #let num = counter(heading).display(it.numbering)
    #box(width: 1cm)[#num]
    #it.body
  ]

  // Gambar: caption di bawah. Tabel: caption di atas. Caption 10 pt.
  set figure(numbering: "1", gap: 0.6em)
  show figure.where(kind: image): set figure(supplement: [Gambar])
  show figure.where(kind: table): set figure(supplement: [Tabel])
  show figure.where(kind: table): set figure.caption(position: top)
  set figure.caption(separator: [ ])
  show figure.caption: set text(size: 10pt)

  // Tabel tanpa garis default; pasang table.hline() sesuai kebutuhan
  set table(stroke: none, inset: (x: 5pt, y: 4pt))

  // Persamaan bernomor (1), (2), ...
  set math.equation(numbering: "(1)")

  // Daftar pustaka: nomor [1], [2], ... sesuai urutan kutipan (Vancouver)
  set bibliography(style: "vancouver")
  show cite: it => {
    show "(": "["
    show ")": "]"
    it
  }

  // Banner jurnal
  block(below: 1.2em)[
    #set text(size: 7pt)
    #text(fill: secondary-color)[SEWAGATI, Jurnal Pengabdian Kepada Masyarakat, #volume, #year (e-ISSN: 2613-9960)]
    #line(length: 100%, stroke: 0.5pt)
    #block(above: 2em)[
      #if doi != none [DOI: #doi] #h(1fr)
      #if dates != none [
        Naskah Masuk #date-of(dates, "submitted"); #h(1fr)
        Naskah Diulas #date-of(dates, "reviewed"); #h(1fr)
        Naskah Diterima #date-of(dates, "accepted"); #h(1fr)
        Naskah Dipublikasikan Online #date-of(dates, "published") #h(2fr)
    ]
    ]
  ]

  // Judul, penulis, afiliasi
  align(left)[
    #text(size: 18pt, weight: "bold")[#title]
    #if title-en != none [
      #linebreak()
      #text(size: 14pt, style: "italic")[#title-en]
    ]
    #v(1em)
    #text(size: 12pt)[#authors.map(a => [#a.name#author-mark(a)]).join(" | ")]
    #v(0.4em)
    #text(size: 8pt)[#affiliations.enumerate(start: 1).map(((i, t)) => [#super[#i] #t]).join(", ")]
    #if corresponding != none [
      #v(0.6em)
      #set text(size: 8pt)
      *Korespondensi*
      
      \* #corresponding.name, #corresponding.affiliation. Alamat e-mail: #corresponding.email
    ]
  ]

  // Abstrak dan kata kunci, Indonesia lalu Inggris
  let abstract-part(heading-text, abstract, kw, kw-label) = [
    #v(1em)
    #text(size: 10pt, weight: "bold")[#heading-text]
    #v(0.2em)
    #set text(size: 9pt)
    #abstract
    #if kw != none [
      #v(0.4em)
      #strong[#kw-label] #keywords-str(kw)
    ]
  ]

  if abstract-id != none { abstract-part("ABSTRAK", abstract-id, keywords-id, "Kata Kunci:") }
  if abstract-en != none { text(style: "italic")[ #abstract-part("ABSTRACT", abstract-en, keywords-en, "Keywords:") ] }

  v(1em)
  line(length: 100%, stroke: 0.5pt)

  body
}
