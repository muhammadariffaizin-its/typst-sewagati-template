# SEWAGATI Typst Template

A [Typst](https://typst.app) template for manuscripts of **SEWAGATI, Jurnal Pengabdian Kepada Masyarakat** (community service journal, e-ISSN 2613-9960). It follows the layout of the journal's Word template and the rules in the author guidelines.

The template is a single file, `sewagati.typ`. Import it once and apply it with a show rule.

## Requirements

- [Typst](https://github.com/typst/typst/releases) 0.14 or newer, or the Typst web app
- Times New Roman installed on your system (the template uses it for all text)

## Quick start

```typst
#import "sewagati.typ": *

#show: sewagati.with(
  title: "Judul Pengabdian Masyarakat",
  title-en: "English Title",
  authors: (
    (name: "Penulis Pertama", affiliation: 1, corresponding: true),
    (name: "Penulis Kedua", affiliation: 2),
  ),
  affiliations: ("Afiliasi Penulis Pertama", "Afiliasi Penulis Kedua"),
  corresponding: (
    name: "Penulis Pertama",
    affiliation: "Afiliasi penulis koresponden",
    email: "nama@contoh.ac.id",
  ),
  short-author: "Nama belakang penulis pertama",
  abstract-id: [Abstrak dalam Bahasa Indonesia.],
  keywords-id: ("Alfa", "Beta", "Kompleksitas"),
  abstract-en: [Abstract in English.],
  keywords-en: ("Alpha", "Beta", "Complexity"),
)

= Pendahuluan

Isi naskah di sini. Kutipan seperti @chen2016 menjadi [1].

= Daftar Pustaka

#bibliography("refs.bib", title: none)
```

Compile it:

```sh
typst compile example.typ
```

Use `typst watch example.typ` while you write to recompile on save.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| `title` | string | Article title (Indonesian). |
| `title-en` | content / `none` | English title, shown in italics below the title. |
| `authors` | array | Each item is `(name:, affiliation:, corresponding:)`. `affiliation` is a number, or an array such as `(1, 2)`. Set `corresponding: true` on one author. |
| `affiliations` | array of strings | Affiliation texts. Position *n* is affiliation number *n*. |
| `corresponding` | dictionary / `none` | `(name:, affiliation:, email:)` for the corresponding author. |
| `volume` | content | Volume and issue, for example `"vol(issue)"`. |
| `year` | content | Publication year. |
| `doi` | content / `none` | DOI, shown in the banner. |
| `dates` | dictionary / `none` | `(submitted:, reviewed:, accepted:, published:)`. Missing keys show `dd-mm-yyyy`. |
| `short-author` | string | First author's surname. Used in the running header on pages 2 and later. |
| `abstract-id`, `abstract-en` | content / `none` | Abstracts in Indonesian and English. |
| `keywords-id`, `keywords-en` | array or string / `none` | Keywords. An array is joined with commas. |

The template takes the body as its last argument, so everything after `#show: sewagati.with(...)` is the article body.

## Writing guide

- **Headings:** `= Heading` is a numbered section (1, 2, ...). `== Heading` is a numbered subsection (1.1, 1.2, ...).
- **Figures:** use `#figure(image(...), caption: [...]) <label>`. Captions go below the figure and are labelled *Gambar*, numbered automatically. Refer to them with `@label`.
- **Tables:** use `#figure(table(...), caption: [...], kind: table) <label>`. Captions go above the table and are labelled *Tabel*. Tables have no borders by default, so add `table.hline()` where you want rules.
- **Equations:** `$ ... $ <label>` is numbered `(1)`, `(2)`, and so on.
- **Citations:** cite with `@key` from `refs.bib`. The template uses Vancouver style, which numbers citations in order of appearance and prints them as `[1]`, `[2]`.
- **Bibliography:** place `#bibliography("refs.bib", title: none)` after your own heading. Only cited entries are listed.

## Repository contents

| Path | Description |
| --- | --- |
| `sewagati.typ` | The template. Copy or import this file. |
| `example.typ` | A full sample manuscript that uses the template. |
| `refs.bib` | Sample bibliography for the example. |
| `assets/` | Images used by the example. |
| `ref/` | The original Word template and the author guidelines. |

## Notes

- The author guidelines set the abstract at no more than 250 words and require at least 10 references. The sample abstract text follows the Word template's own guidance, which asks for 150–200 words, so check the wording before you submit.
- Accepted manuscripts are reformatted in LaTeX by the journal editors. This template is for the submission draft.
- The sample figure `assets/image3.png` has its own caption text baked into the image. Remove one of the two captions if you reuse it.
