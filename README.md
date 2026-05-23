# 🏥 Analysis of Health Workers in Central Java 2022
**From Raw Data to Health Insight — A Data Analytics Portfolio Project**

---

## 📌 Project Descriptions
This project is an in-depth analysis of the distribution and availability of healthcare workers throughout the
Regencies/Cities in Central Java Province in 2022.

The primary goal of this project is to answer critical questions:

"Have healthcare workers in Central Java been distributed evenly and adequately?"

Analysis was conducted using Google BigQuery for SQL data processing, and the results provided relevant insights for
public health policy.

---

## 🎯 Problem Statement
Central Java has a population of 37 million people spread across 35 Regencies/Cities.
However, is the availability of doctors and healthcare workers evenly distributed? The WHO standard sets a minimum of 1
doctor per 1,000 people as the threshold for adequate health services.

---

## 📊 Dataset
| Information | Detail |
|---|---|
| Dataset Name | The Number of Health Workers in Central Java |
| Year | 2022 |
| Number of Rows | 35 Regions (29 Regencies + 6 Cities) |
| Sources | Central Java Province Health Data |

## Dataset Column:
| Column | Descriptions |
|---|---|
| TIPE | Type of area (Regency/City) |
| KABUPATEN_KOTA | Region Name |
| JUMLAH_PENDUDUK | Total Population |
| JUMLAH_TENAGA_GIZI | Number of Nutritionists |
| JUMLAH_TENAGA_FARMASI | Number of Pharmaceutical Personel |
| JUMLAH_BIDAN | Number of Midwives |
| JUMLAH_PERAWAT | Number of Nurses |
| JUMLAH_DOKTER_GIGI | Number of Dentists |
| JUMLAH_DOKTER_SPESIALIS | Number of Specialist Doctors |
| JUMLAH_DOKTER_UMUM | Number of General Practitioners |

---

## 🔧 Tools
- SQL
- Google BigQuery

---

## 🔍 Analysis Results
Data Summary
- Total Healthcare Workers: 124,757 people
- Total Population: 37,032,410 people
- Total Regencies/Cities: 35 regions
- Average General Practitioners: 309 doctors per region

| Region | Population | Sufficient |
|---|---|---|
| Surakarta | 1.648 | ✅ |
| Magelang | 1.479 | ✅ |
| Semarang | 1.283 | ✅ |

- **Only** 3 out of 35 regions (8.6%) meet WHO standards!

| Cities in Central Java | Specialist Doctor |
|---|---|
| Semarang | 952 |
| Surakarta | 686 |
| magelang | 135 |
| Salatiga | 88 |
| Tegal | 60 |
| Pekalongan | 59 |

- The city of Semarang is dominated by **952 specialist doctors**

---

## 💡 Key Insights
1. **🚨 Serious Doctor Crisis**

91.4% of regions in Central Java have not met the WHO standard (1 doctor per 1,000 inhabitants). Out of 35 regions, only 3
passed, all of which are major cities. Not a single regency meets the standard.

2. **🏙️ Urban vs. Rural Disparities**

All areas with an adequate ratio are cities. Regencies — where the majority of the population resides — actually have the
greatest shortage of doctors.

3. **🏥 Dominasi Kota Semarang**

The city of Semarang dominates nearly all indicators:
- the highest number of general practitioners (2,130)
- the highest number of specialists (952)
- the highest number of nurses (7,799)
- This reflects an uneven concentration of healthcare services.

4. **🔬 The Specialist Doctor Is Highly Focused**

More than 80% of specialist doctors in the cities of Central Java are only found in Semarang and Surakarta. Other areas
are highly dependent on referrals to these two cities.
   
5. **💪 Nurses Are the Backbone**

The largest composition of healthcare workers is nurses. In areas with a shortage of doctors, it is the nurses who support
the continuity of public health services.
   
6. **🗺️ The Most Vulnerable Border Areas**

Rembang Regency, Batang Regency, and Blora Regency have the lowest doctor-to-population ratios — a large population with
very few doctors. These areas require priority attention.

---

## 📈 Recommendations
1. The rural doctor program needs to be strengthened for regencies with the lowest ratios.
2. Special incentives for doctors willing to serve outside major cities.
3. Capacity building of health centers in regencies as the frontline of healthcare services.
4. Equal distribution of specialist doctors to smaller towns so that not all patients have to be referred to
Semarang/Surakarta.

---

## 👤 Author
Name  : Dwi Farhan  
Email : mighty.coord@gmail.com  
Linkedin : linkedin.com/in/dwi-farhan
