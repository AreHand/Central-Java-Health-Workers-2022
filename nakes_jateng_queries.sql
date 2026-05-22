-- ================================================
-- PROJECT  : Analisis Tenaga Kesehatan Jawa Tengah
-- DATASET  : tenaga_kesehatan_2022
-- AUTHOR   : Dwi Farhan
-- TAHUN    : 2022
-- ================================================


-- ------------------------------------------------
-- Q1: Total Tenaga Kesehatan di Jawa Tengah
-- ------------------------------------------------
SELECT
  SUM(JUMLAH_TENAGA_GIZI
    + JUMLAH_TENAGA_FARMASI
    + JUMLAH_BIDAN
    + JUMLAH_PERAWAT
    + JUMLAH_DOKTER_GIGI
    + JUMLAH_DOKTER_SPESIALIS
    + JUMLAH_DOKTER_UMUM) AS total_tenaga_kesehatan
FROM `jateng_health.tenaga_kesehatan_2022`;
-- RESULT: 124,757 orang


-- ------------------------------------------------
-- Q2: Total Penduduk Jawa Tengah
-- ------------------------------------------------
SELECT
  SUM(JUMLAH_PENDUDUK) AS total_penduduk
FROM `jateng_health.tenaga_kesehatan_2022`;
-- RESULT: 37,032,410 jiwa


-- ------------------------------------------------
-- Q3: Total Kabupaten/Kota
-- ------------------------------------------------
SELECT
  COUNT(KABUPATEN_KOTA)  AS total_kab_kota,
  COUNTIF(TIPE = 'Kab')  AS total_kabupaten,
  COUNTIF(TIPE = 'Kota') AS total_kota
FROM `jateng_health.tenaga_kesehatan_2022`;
-- RESULT: 35 daerah (29 Kab + 6 Kota)


-- ------------------------------------------------
-- Q4: Rata-rata Dokter Umum per Kab/Kota
-- ------------------------------------------------
SELECT
  ROUND(AVG(JUMLAH_DOKTER_UMUM), 2) AS rata_rata_dokter_umum
FROM `jateng_health.tenaga_kesehatan_2022`;
-- RESULT: 309.14 dokter


-- ------------------------------------------------
-- Q5: Daerah yang Rasio Dokter Mencukupi
-- ------------------------------------------------
SELECT
  KABUPATEN_KOTA,
  TIPE,
  JUMLAH_DOKTER_UMUM,
  JUMLAH_PENDUDUK,
  ROUND((JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000, 3) AS rasio_per_1000
FROM `jateng_health.tenaga_kesehatan_2022`
WHERE (JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000 >= 1
ORDER BY rasio_per_1000 DESC;
-- RESULT: Kota Surakarta, Kota Magelang, Kota Semarang


-- ------------------------------------------------
-- Q6: Jumlah Daerah yang Rasio Mencukupi
-- ------------------------------------------------
SELECT
  COUNT(*) AS daerah_mencukupi
FROM `jateng_health.tenaga_kesehatan_2022`
WHERE (JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000 >= 1;
-- RESULT: 3 dari 35 daerah (8.6%)


-- ------------------------------------------------
-- Q7: Dokter Spesialis di Kota-kota
-- ------------------------------------------------
SELECT
  KABUPATEN_KOTA,
  JUMLAH_DOKTER_SPESIALIS,
  JUMLAH_PENDUDUK,
  ROUND((JUMLAH_DOKTER_SPESIALIS / JUMLAH_PENDUDUK) * 100000, 2)
    AS spesialis_per_100rb_penduduk
FROM `jateng_health.tenaga_kesehatan_2022`
WHERE TIPE = 'Kota'
ORDER BY JUMLAH_DOKTER_SPESIALIS DESC;
-- RESULT: Semarang 952, Surakarta 686, Magelang 135


-- ------------------------------------------------
-- BONUS: Ranking Semua Daerah + Status Rasio
-- ------------------------------------------------
SELECT
  KABUPATEN_KOTA,
  TIPE,
  JUMLAH_DOKTER_UMUM,
  JUMLAH_PENDUDUK,
  ROUND((JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000, 3) AS rasio_per_1000,
  CASE
    WHEN (JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000 >= 1   THEN 'MENCUKUPI'
    WHEN (JUMLAH_DOKTER_UMUM / JUMLAH_PENDUDUK) * 1000 >= 0.5 THEN 'HAMPIR CUKUP'
    ELSE 'KURANG'
  END AS status_rasio
FROM `jateng_health.tenaga_kesehatan_2022`
ORDER BY rasio_per_1000 DESC;
