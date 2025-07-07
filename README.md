# Readlytic Yapay Zeka ve Teknoloji Akademisi 2025 Mezuniyet Bootcampi AI Grup 193 Projesi

## Takım İsmi & Proje İsmi
# Readlytic

## 👥 Takımımız
- 👩‍💻 Meltem Çap : Product Owner
- 👩‍💻 Nazlıcan Güvenoğlu : Scrum Master
- 👩‍💻 Zeynep Sude İnal : Developer
- 👨‍💻 Salih Ekdi : Developer 

## Ürün Logosu

![Ürün Logosu](https://github.com/user-attachments/assets/72fcd5d2-1db0-4dc3-83ef-77466e64dbc8)

---

## 🚀 Proje Açıklaması

Readlytic, çocukların sesli okuma performanslarını analiz ederek disleksi riski taşıyıp taşımadıklarını erken aşamada tespit etmeyi amaçlayan, yapay zekâ destekli bir dijital analiz sistemidir.
Proje kapsamında, çocuklardan alınan sesli okuma kayıtları otomatik olarak metne dönüştürülür. Ardından, bu metinler orijinal okuma metni ile karşılaştırılır ve yapılan hatalar, eksik kelimeler, hece değişimleri ve okuma düzeni analiz edilir. Analiz sonucu, çocuğun dikkat, harf-ses eşleşmesi ve okuma akıcılığına dair anlamlı göstergeler elde edilir.

## 🚀 Projenin Amacı
Readlytic projesinin amacı, çocukların sesli okuma becerilerini analiz ederek disleksi (öğrenme güçlüğü) gibi özel öğrenme durumlarını erken aşamada tespit etmeye yardımcı olmak ve bu süreci öğretmenler ve aileler için kolaylaştırmaktır.
Bu amaçla sistem, çocuğun sesli okuma sırasında söylediklerini otomatik olarak yazıya çevirir, orijinal metinle karşılaştırır ve yapay zekâ destekli analizle okuma hatalarını, kelime değişikliklerini, güven skorlarını değerlendirerek disleksi riski hakkında öngörü sunar.
Readlytic, eğitimde fırsat eşitliğini desteklemeyi ve özel gereksinimli bireylerin erken teşhis ve destek süreçlerine katkı sağlamayı hedefler.

---

## Temel Özellikler 
1. Sesli Okuma Kaydı
    • Çocuk sistem üzerinden kısa bir metni sesli okur.
    • Okuma sesi sistem tarafından kaydedilir.
2. Otomatik Yazıya Çevirme
    • Kayıtlı ses, yapay zekâ ile yazıya dönüştürülür.
    • Çocuğun ne söylediği metin olarak ekrana yansır.
3. Okuma Hatalarını Tespit Etme
    • Okunan metin ile doğru metin karşılaştırılır.
    • Eksik, yanlış veya sıra hatalı kelimeler belirlenir.
4. Şüpheli Kelimeleri Belirleme
    • Yapay zekâ, hangi kelimelerde emin olmadığını gösterir.
    • Bu kelimeler vurgulanarak dikkat çekilir.
 5. Disleksi Riski Analizi
    • Hata sayısına ve türüne göre sistem risk seviyesini belirler.
    • Risk durumu: Düşük, Orta, Yüksek şeklinde gösterilir.
 6. Kısa Geri Bildirim Raporu
    • Okuma sonunda sistem öğrenciye veya öğretmene bir özet sunar.
    • Hangi kelimelerde zorlanıldığı raporda yer alır.
7. Kullanımı Kolay Arayüz
    • arayüzü basit ve anlaşılır şekilde tasarlanmıştır.
    • Hem öğretmenler hem veliler kolayca kullanabilir.

---

## 👥 Hedef Kitle
Readlytic projesi, özellikle ilkokul çağındaki çocukların okuma gelişimini takip etmek ve öğrenme güçlüğü risklerini erken tespit etmek isteyen birey ve kurumlara hitap etmektedir. Projenin başlıca hedef kitleleri şunlardır:
 1. Öğretmenler ve Eğitimciler
    • Öğrencilerinin okuma becerilerini objektif olarak değerlendirmek,
    • Potansiyel disleksi belirtilerini erken fark etmek,
    • Öğrencilere yönelik kişiselleştirilmiş destek planları oluşturmak isteyen öğretmenler.
2. Veliler ve Aileler
    • Çocuğunun okuma sürecini yakından takip etmek,
    • Evde yapılan sesli okuma çalışmaları ile gelişim sürecini analiz etmek isteyen ebeveynler.
3. Rehberlik Servisleri ve Uzmanlar
    • Okul psikolojik danışmanları, özel eğitim uzmanları ve dil-konuşma terapistleri gibi profesyoneller,
    • Öğrenciye tanı sürecinde destek olacak veriye dayalı analizlere ihtiyaç duyan uzmanlar.
 4. Okullar ve Eğitim Kurumları
    • Eğitimde fırsat eşitliği sağlamak isteyen,
    • Erken tanı ve yönlendirme süreçlerini teknoloji ile güçlendirmek isteyen kurumlar.

---

## 📱 Kullanılacak Teknolojiler
Programlama Dili
    • Python: Tüm arka uç (backend), veri işleme, ses ve metin analizleri için.
Yapay Zekâ & NLP
    • OpenAI Whisper
        ◦ Sesli okuma verilerini yazıya çevirmek için kullanılır (speech-to-text).
        ◦ Türkçe desteği sayesinde çocukların söylediği cümleleri doğru şekilde analiz etmeye yardımcı olur.
    • Google Cloud Speech-to-Text API (Alternatif)
        ◦ Gerçek zamanlı ses dönüştürme ve kelime güven skoru (confidence score) sağlamak için.
    • Difflib (Python modülü)
        ◦ Öğrencinin okuduğu metin ile doğru metin arasındaki farkları bulmak için.
        ◦ Kelime eksikliği, yanlış okuma ve sıra değişikliği gibi durumları tespit eder.

 Veri Analizi & Görselleştirme
    • NumPy / Pandas
        ◦ Verilerin işlenmesi, hata türlerinin sınıflandırılması ve raporlanması için.
    • Matplotlib / Seaborn
        ◦ Okuma analizi sonuçlarının grafiksel gösterimi (örneğin hata oranı zaman içinde).
 Arayüz & Uygulama
    • Flutter
      Programlama Dili
    • Python: Tüm arka uç (backend), veri işleme, ses ve metin analizleri için.
 Yapay Zekâ & NLP
    • OpenAI Whisper
        ◦ Sesli okuma verilerini yazıya çevirmek için kullanılır (speech-to-text).
        ◦ Türkçe desteği sayesinde çocukların söylediği cümleleri doğru şekilde analiz etmeye yardımcı olur.
    • Google Cloud Speech-to-Text API (Alternatif)
        ◦ Gerçek zamanlı ses dönüştürme ve kelime güven skoru (confidence score) sağlamak için.
    • Difflib (Python modülü)
        ◦ Öğrencinin okuduğu metin ile doğru metin arasındaki farkları bulmak için.
        ◦ Kelime eksikliği, yanlış okuma ve sıra değişikliği gibi durumları tespit eder.

Veri Analizi & Görselleştirme
    • NumPy / Pandas
        ◦ Verilerin işlenmesi, hata türlerinin sınıflandırılması ve raporlanması için.
    • Matplotlib / Seaborn
        ◦ Okuma analizi sonuçlarının grafiksel gösterimi (örneğin hata oranı zaman içinde).
 Arayüz & Uygulama
    • Flutter
        ◦ Kullanıcı dostu bir arayüzü ile ses kaydı, metin analizi ve sonuç gösterimi için.
        ◦ Öğretmen, veli ve öğrenci gibi farklı kullanıcılar için sade bir deneyim sunar.
---

## Proje Yönetimi ve Sprint Raporları
Tüm proje planlama ve süreç yönetimi takibimiz trello üzerinden yapılmaktadır. 
🔗 [Product Backlog Board'a Göz Atın](https://trello.com/b/1ICHbA90/sprint-board)

## Sprint 1 Raporu

**Sprint Notları** : Bu sprintte hedefimiz disleksi tespitine odaklı yapay zekâ destekli platform fikrinin netleştirilmesi, hedef kitle analizinin yapılması ve yazılım geliştirme sürecine temel oluşturacak ürün vizyonunun belirlenmesiydi. Ayrıca Flutter gibi kullanılacak teknolojilere karar verilmesi ve MVP kapsamının sınırlandırılması amaçlandı.

**Sprint için Tahmin Edilen Puan** : 25

**Puan Tamamlama Mantığı** : Sprint 1'de sadece fikir belirleme, kullanıcı analizi, teknoloji seçimi ve proje planlaması gibi hazırlık görevleri yer aldığı için puan 25 olarak belirlenmiştir. Takım değiştirme sonrası oluşan bir grup olduğumuz için sınırlı bir sprint gerçekleştirilmiştir. Projenin genel kapsamı ve ekibimizin kapasitesi göz önüne alınarak toplamda 3 sprint için yaklaşık 150–170 sprint puanlık bir iş yükü planlanmıştır. Bu puanlar görevlerin karmaşıklığı, zaman tahmini ve belirsizlik derecelerine göre belirlenmiş, ekip içinde fikir birliğiyle onaylanmıştır.

**Daily Scrum** : Daily scrum toplantıları genellikle whatsap üzerinden ilerletilmiştir. Genel anlamda neler yaptığımızı ve toplantı planlamalarımızın yer aldığı görüntülere ekteki drive dosyasından ulaşabilirsiniz.
![Toplantı ekran görüntüsü](https://github.com/user-attachments/assets/9825e28b-7a47-4e9a-a49f-d8cf09a151e0)
![IMG_20250707_104729](https://github.com/user-attachments/assets/9d8656c2-1b77-4ece-aae5-27472e659724)
![IMG_20250707_104858](https://github.com/user-attachments/assets/219c5e22-a29a-4d49-abc7-06783af0c12f)
![IMG_20250707_110111](https://github.com/user-attachments/assets/695bd5d6-ca06-4548-a71c-6a3ea5b13286)


## Sprint Board Update

![Sprint Board](https://github.com/user-attachments/assets/a3196f19-2fa8-4e0a-af01-4286b7e54bfa)

## 🧪 Sprint Review
- Ürün fikri ekipçe netleştirildi
- Kullanıcıya ne fayda sağlayacağı ve neden böyle bir sistemin gerekli olduğu üzerine derinlemesine konuşuldu
- Flutter teknolojisinin ve NLP’nin proje için uygun teknolojiler olduğuna karar verildi.
- Sprint 2’de yazılımsal kısma daha fazla ağırlık verilmesi gerektiğine karar verildi
- Aramızda çalışan arkadaşlarımız da olduğu için her gün toplanamasak bile her gün whatsap üzerinden birbirimizle haberleşmenin daha iyi olacağına karar verildi.

## 🗨️ Sprint Retrospective
**Güçlü Yönler** : 
- Ekip vizyonu net bir şekilde belirlendi
- Ekip içi iletişimimiz ve ekibin enerjisi gayet güzeldi
- Sprint 2 için daha net hedefler belirlendi ve sprint 1’deki eksiklikler net bir şekilde belirlendi.

**Geliştirilmesi Gereken Yönler** : 
- İlk günlerde yaptığımız toplantıda görev paylaşımı yapılmadı ve iletişim noktasında çok verimli bir süreç geçirilmedi.
- Zaman planlaması eksik kaldı.
- Teknik kısımdan ziyade proje fikrine daha çok odaklanıldı. Bu sebepten ötürü sprint 2’de teknik kısma da daha fazla ağırlık verilmesine karar verildi.

**Alınan Kararlar** :
- Haftada en az 2 toplantı yapılmasına karar verildi
- Toplantı yapılmasa bile her günn günlük olarak whatsaptan gidişat hakkında bilgi veirlmesine karar verildi

## 📑 Jüri Notu
- Henüz yazılım geliştirme başlamadı. Sprint 1 bir hazırlık ve zemin sprinti olarak ele alındı.
- Projenin sosyal etkisi, teknik altyapısı ve hedef kullanıcı kitlesi detaylı biçimde belirlendi.
- Sprint 2 ile birlikte ses kaydı alma, metne çeviri ve hata karşılaştırma özelliklerinin geliştirilmesi planlanmaktadır.
  
## Sonraki Sprint Planı

- Flutter ile ekranların hazırlanması
- Ses kaydı entegrasyonu
- Speech-to test API testleri
- Veri analizi altyapısının kurulması
- MVP’nin ilk işlevsel halinin çıkarılması
