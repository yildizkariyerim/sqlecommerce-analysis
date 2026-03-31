# 📊 SQL E-Commerce Analysis

Bu proje, SQL kullanarak bir e-ticaret veri seti üzerinden temel veri analizi yapmayı amaçlamaktadır.

## 🎯 Proje Amacı

Bu çalışmada amaç:

- SQL ile veri okuma ve analiz etme
- Temel sorgular (SELECT, WHERE, ORDER BY) kullanma
- GROUP BY ile veri gruplama
- Veriden anlamlı iş içgörüleri çıkarma

## 🗂️ Dataset

Proje kapsamında kullanılan veri seti, bir e-ticaret şirketine ait sipariş verilerini temsil etmektedir.

Tablo: `orders`

İçerdiği alanlar:

- customer_name → müşteri adı  
- city → şehir  
- product → ürün  
- quantity → adet  
- price → fiyat  
- order_date → sipariş tarihi  

## 🛠️ Kullanılan Teknolojiler

- PostgreSQL  
- SQL  

## 📌 Yapılan Analizler

Bu projede aşağıdaki sorulara cevap aranmıştır:

- Hangi şehirden daha fazla sipariş geliyor?  
- Hangi ürün daha çok satılıyor?  
- Hangi ürün en fazla gelir getiriyor?  
- En pahalı ve en ucuz siparişler nelerdir?  
- Kaç farklı şehirden sipariş var? 
- Hangi şehir daha fazla gelir üretmektedir? 

## 📈 Öne Çıkan İçgörüler

- İstanbul sipariş yoğunluğu açısından öne çıkmaktadır  
- Laptop ürünleri toplam gelirde önemli rol oynamaktadır  
- Düşük fiyatlı ürünler (Mouse, Keyboard) adet bazında daha sık satılmaktadır  
- Sipariş sayısı ile gelir aynı şey değildir, birlikte analiz edilmelidir
- Şehir bazlı analizlerde sipariş sayısı, toplam ciro ve ortalama sipariş değeri birlikte değerlendirilmelidir 

## 📁 Proje Dosyaları

- `queries.sql` → Tüm SQL sorguları  
- `analysis.md` → Analiz sonuçları ve yorumlar  
- `README.md` → Proje açıklaması  

## 🚀 Sonuç

Bu proje, SQL ile veri analizi sürecinin temel mantığını göstermektedir.  
Gerçek hayatta bu tür analizler dashboard'lara ve iş kararlarına dönüşmektedir.

---

👩‍💻 Bu proje Mart SQL Başlangıç Kampı kapsamında hazırlanmıştır.
