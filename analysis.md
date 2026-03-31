# SQL E-Commerce Analysis - Insights

Bu projede bir e-ticaret şirketine ait örnek sipariş verileri SQL kullanılarak analiz edilmiştir.

## Amaç
Sipariş verileri üzerinden temel analizler yaparak:
- satış dağılımını görmek
- şehir ve ürün bazlı performansı anlamak
- temel iş içgörüleri üretmek

## Temel Bulgular

### 1. Siparişler birden fazla şehirden gelmektedir
Veri setinde İstanbul, Ankara, İzmir, Bursa ve Antalya olmak üzere farklı şehirlerden sipariş bulunmaktadır.  
Bu, markanın birden fazla lokasyonda müşteriye ulaştığını göstermektedir.

### 2. İstanbul sipariş yoğunluğu açısından öne çıkmaktadır
İstanbul, sipariş sayısı bakımından en dikkat çeken şehirlerden biridir.  
Bu durum operasyonel yük, teslimat planlaması ve müşteri yoğunluğu açısından önemlidir.

### 3. Laptop kategorisi en yüksek gelir yaratan ürünlerden biridir
Laptop siparişleri hem yüksek fiyatlı hem de toplam gelir açısından güçlü bir katkı sağlamaktadır.  
Bu da yüksek fiyatlı ürünlerin toplam ciro üzerindeki etkisini göstermektedir.

### 4. Mouse ve Keyboard ürünleri daha düşük fiyatlı ama daha sık sipariş edilen ürünlerdir
Bu ürünler tek siparişte daha düşük gelir üretse de adet bazında daha sık tercih edilmektedir.  
Bu durum düşük fiyatlı ürünlerin hacim yaratarak iş sonuçlarını etkileyebileceğini gösterir.

### 5. Şehir bazlı analizler gelir farkını ortaya koymaktadır
Bazı şehirlerde sipariş sayısı yüksekken, bazı şehirlerde ortalama sipariş tutarı daha yüksektir.  
Bu fark, sadece sipariş sayısına bakmanın yeterli olmadığını gösterir.

### 6. Sipariş sayısı ile toplam gelir aynı şey değildir
Bir ürün çok sipariş alabilir ama en çok geliri yaratmayabilir.  
Bu nedenle analiz yaparken hem `COUNT` hem de `SUM` birlikte değerlendirilmelidir.

### 7. Şehir bazlı analizlerde sipariş sayısı, ciro ve ortalama birlikte değerlendirilmelidir

Şehir bazında yapılan analizlerde sadece sipariş sayısına bakmak yeterli değildir.
Aynı anda sipariş sayısı (COUNT), toplam ciro (SUM) ve ortalama sipariş tutarı (AVG) birlikte incelendiğinde daha anlamlı sonuçlar elde edilir.

Bu yaklaşım sayesinde:
	•	Hangi şehir daha fazla sipariş getiriyor
	•	Hangi şehir daha fazla gelir üretiyor
	•	Hangi şehirde ortalama sepet tutarı daha yüksek
gibi kritik iş sorularına tek bir analizle cevap verilebilir.

## Sonuç
Bu çalışma, SQL ile temel veri okuma, filtreleme, sıralama ve gruplama işlemlerinin iş problemlerine nasıl dönüştürülebileceğini göstermektedir.  
Küçük bir veri seti üzerinde yapılan bu analiz, gerçek hayattaki satış, operasyon ve ürün kararlarının temel mantığını yansıtmaktadır.
