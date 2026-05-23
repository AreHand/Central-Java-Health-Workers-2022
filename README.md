# 🏥 Analisis Tenaga Kesehatan Jawa Tengah 2022
**From Raw Data to Health Insight — A Data Analytics Portfolio Project**

---

## 📌 Deskripsi Project
Project ini merupakan analisis mendalam terhadap distribusi dan ketersediaan tenaga kesehatan
di seluruh Kabupaten/Kota di Provinsi Jawa Tengah tahun 2022.
Tujuan utama project ini adalah menjawab pertanyaan kritis:

"Apakah tenaga kesehatan di Jawa Tengah sudah terdistribusi secara merata dan mencukupi?"

Analisis dilakukan menggunakan Google BigQuery untuk pengolahan data SQL,
dan hasilnya memberikan insight yang relevan untuk kebijakan kesehatan publik.

---

## 🎯 Problem Statement
Jawa Tengah memiliki 37 juta jiwa penduduk yang tersebar di 35 Kabupaten/Kota.
Namun, apakah ketersediaan dokter dan tenaga kesehatan sudah merata?
Standar WHO menetapkan minimal 1 dokter per 1.000 penduduk sebagai ambang batas layanan kesehatan yang layak.

---

## 📊 Dataset
| Informasi | Detail |
|---|---|
| Nama Dataset | Jumlah Tenaga Kesehatan Jawa Tengah |
| Tahun | 2022 |
| Jumlah Baris | 35 Daerah (29 Kabupaten + 6 Kota) |
| Sumber | Data Kesehatan Provinsi Jawa Tengah |

## Kolom Dataset:
| Kolom | Keterangan |
|---|---|
| TIPE | Jenis daerah (Kab/Kota) |
| KABUPATEN_KOTA | Nama Daerah |
| JUMLAH_PENDUDUK | Total Penduduk |
| JUMLAH_TENAGA_GIZI | Jumlah ahli gizi |
| JUMLAH_TENAGA_FARMASI | Jumlah tenaga farmasi |
| JUMLAH_BIDAN | Jumlah bidan |
| JUMLAH_PERAWAT | Jumlah perawat |
| JUMLAH_DOKTER_GIGI | Jumlah dokter gigi |
| JUMLAH_DOKTER_SPESIALIS | Jumlah dokter spesialis |
| JUMLAH_DOKTER_UMUM | jumlah dokter umum |

---

## 🔧 Tools
- SQL
- Google BigQuery
- Google Collab

---

## 🔍 Hasil Analisis
Ringkasan Data
- Total Tenaga Kesehatan: 124,757 orang
- Total Penduduk: 37,032,410 jiwa
- Total Kabupaten/Kota: 35 daerah
- Rata-rata Dokter Umum: 309 dokter per daerah

| Kota Surakarta | 1.648 ✅Mencukupi |
| Kota Magelang | 1.479 ✅Mencukupi |
| Kota Semarang | 1.283 ✅Mencukupi |

- **Hanya** 3 dari 35 daerah (8.6%) yang memenuhi standar WHO!

## Dokter Spesialis di Kota-kota Jawa Tengah
| Semarang | 952 |
| Surakarta | 686 |
| magelang | 135 |
| Salatiga | 88 |
| Tegal | 60 |
| Pekalongan | 59 |

- Kota Semarang dominasi dengan **952 dokter spesialis**

---

## 💡 Key Insights
1. **🚨 Krisis Dokter yang Serius**
   91.4% daerah di Jawa Tengah belum memenuhi standar WHO (1 dokter per 1.000 penduduk). Dari 35 daerah, hanya 3 yang lolos — semuanya kota besar. Tidak ada satu pun kabupaten yang memenuhi standar.

2. **🏙️ Kesenjangan Kota vs Kabupaten**
   Seluruh daerah yang rasionya mencukupi adalah kota. Kabupaten — yang mayoritas penduduknya tinggal di sana — justru paling kekurangan dokter.

3. **🏥 Dominasi Kota Semarang**
   Kota Semarang mendominasi hampir semua indikator: dokter umum terbanyak (2.130), spesialis terbanyak (952), dan perawat terbanyak (7.799). Ini mencerminkan konsentrasi layanan kesehatan yang tidak merata.

4. **🔬 Dokter Spesialis Sangat Terkonsentrasi**
   Lebih dari 80% dokter spesialis di kota-kota Jawa Tengah hanya ada di Semarang dan Surakarta. Daerah lain sangat bergantung pada rujukan ke dua kota ini.
   
5. **💪 Perawat Adalah Tulang Punggung**
   Komposisi terbesar tenaga kesehatan adalah perawat. Di daerah kekurangan dokter, perawatlah yang menopang keberlangsungan layanan kesehatan masyarakat.
   
6. **🗺️ Daerah Perbatasan Paling Rentan**
   Kab. Rembang, Kab. Batang, dan Kab. Blora memiliki rasio dokter terendah — penduduk banyak, dokter sangat sedikit. Daerah-daerah ini membutuhkan perhatian prioritas.

---

## 📈 Rekomendasi
1. Program dokter daerah terpencil perlu diperkuat untuk kabupaten-kabupaten dengan rasio terendah
2. Insentif khusus bagi dokter yang mau bertugas di luar kota besar
3. Peningkatan kapasitas Puskesmas di kabupaten sebagai garda terdepan layanan kesehatan
4. Pemerataan dokter spesialis ke kota-kota kecil agar tidak semua pasien harus dirujuk ke Semarang/Surakarta

---

## 👤 Author
Nama  : Dwi Farhan  
Email : mighty.coord@gmail.com  
Linkedin : linkedin.com/in/dwi-farhan
