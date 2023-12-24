import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Markers {
  static final List<Marker> data = [
    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0115, 28.9834), // Topkapı Sarayı'nın koordinatları
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40, // Resmin genişliği
          height: 40, // Resmin yüksekliği
          fit: BoxFit.cover, // Resmi doldurmak için uygun bir fit modu
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Topkapı Sarayı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/topkapi.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Topkapı Sarayı, İstanbul'un tarihi yarımadadaki Sultanahmet Meydanı'nda yer alan ve Osmanlı İmparatorluğu'nun 15. yüzyıldan 19. yüzyıla kadar hüküm sürdüğü dönemdeki yönetim merkezi olan görkemli bir saray kompleksidir.

Topkapı Sarayı, zengin tarih ve kültürel mirası ile ziyaretçilere unutulmaz bir deneyim sunar. Sarayın içerisinde Osmanlı padişahlarının yaşam alanları, harem bölümü, mücevher koleksiyonları, kutsal emanetler ve çeşitli sanat eserleri bulunmaktadır. Sarayın avluları, bahçeleri ve muhteşem manzarası, tarihi atmosferi soluyarak geçmişe bir yolculuk yapmanızı sağlar.

Topkapı Sarayı, hem tarihe ilgi duyanlar hem de sanat ve mimariyi takdir edenler için vazgeçilmez bir durak olarak öne çıkar. İstanbul'un zengin kültürel mirasını keşfetmek isteyen her ziyaretçi için mutlaka görülmesi gereken önemli bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    // Sultanahmet Meydanı işaretçisi
    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0054, 28.9768), // Sultanahmet Meydanı'nın koordinatları
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/cami.png',
          semanticLabel: "asdasdas",
          width: 40, // Resmin genişliği
          height: 40, // Resmin yüksekliği
          fit: BoxFit.cover, // Resmi doldurmak için uygun bir fit modu
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Sultanahmet Cami'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/sultanahmet.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Sultanahmet Camii, İstanbul'un tarihi ve turistik merkezlerinden Sultanahmet Meydanı'nda yer alan muhteşem bir camidir. Aynı zamanda "Mavi Camii" olarak da bilinir, çünkü iç mekanındaki mavi çinilerle ünlüdür.

yüzyılın başında Sultan I. Ahmet tarafından inşa ettirilen cami, Osmanlı İmparatorluğu'nun en önemli dini ve mimari eserlerinden biridir. Büyüleyici altı minaresi, büyük bir merkezi kubbesi ve zarif süslemeleriyle dikkat çeker. Caminin içindeki mavi çiniler ve büyük avlusu, ziyaretçilere estetik ve huzur dolu bir deneyim sunar.
Sultanahmet Camii, hem dini önemi hem de görsel güzelliği nedeniyle hem yerli hem de yabancı turistlerin ilgisini çeken bir noktadır. İstanbul'un tarihini, kültürünü ve dini mirasını yakından hissetmek isteyenler için kesinlikle görülmeye değer bir yapıdır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0161, 28.9639), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/cami.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Süleymaniye Camii'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/suleymaniye.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Süleymaniye Camii, İstanbul'un tarihi ve manzarası en güzel noktalarından biri olan Yedikule semtinde yükselen büyüleyici bir camidir. Kanuni Sultan Süleyman tarafından 16. yüzyılda Mimar Sinan'a inşa ettirilmiştir.

Bu muhteşem yapı, Osmanlı İmparatorluğu'nun en büyük ve en önemli camilerinden biri olarak kabul edilir. Büyük bir avlusu, dört minaresi ve görkemli bir kubbesi bulunur. Cami kompleksi içinde medreseler, kütüphane, hastane ve türbeler de yer almaktadır. Süleymaniye Camii'nin iç mekanı zarif çiniler ve süslemelerle doludur, bu da camiyi estetik açıdan büyüleyici kılar.

Süleymaniye Camii, hem dini hem de mimari açıdan büyük bir değere sahiptir. İstanbul'a gelen ziyaretçiler için tarihi ve kültürel bir keşif fırsatı sunar. Aynı zamanda caminin yüksek konumu, İstanbul Boğazı ve şehir manzarasıyla da ünlüdür, bu nedenle hem içerideki güzellikleri hem de panoramik manzarayı görmek için ziyaret edilmeye değer bir yerdir."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0084, 28.9799), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/cami.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Ayasofya, Camii'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/ayasofya.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Topkapı Sarayı, İstanbul'un tarihi yarımadadaki Sultanahmet Meydanı'nda yer alan ve Osmanlı İmparatorluğu'nun 15. yüzyıldan 19. yüzyıla kadar hüküm sürdüğü dönemdeki yönetim merkezi olan görkemli bir saray kompleksidir.

Topkapı Sarayı, zengin tarih ve kültürel mirası ile ziyaretçilere unutulmaz bir deneyim sunar. Sarayın içerisinde Osmanlı padişahlarının yaşam alanları, harem bölümü, mücevher koleksiyonları, kutsal emanetler ve çeşitli sanat eserleri bulunmaktadır. Sarayın avluları, bahçeleri ve muhteşem manzarası, tarihi atmosferi soluyarak geçmişe bir yolculuk yapmanızı sağlar.

Topkapı Sarayı, hem tarihe ilgi duyanlar hem de sanat ve mimariyi takdir edenler için vazgeçilmez bir durak olarak öne çıkar. İstanbul'un zengin kültürel mirasını keşfetmek isteyen her ziyaretçi için mutlaka görülmesi gereken önemli bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0117, 28.9831), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/muze.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('İstanbul Arkeoloji Müzeleri'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/istanbularekolojimuze.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """İstanbul Arkeoloji Müzeleri, İstanbul'un tarihi yarımadada yer alan üç farklı müze kompleksini içeren bir kültürel hazinedir. Bu müzeler, arkeolojik eserler, antik dönem eserleri ve sanat eserlerinin geniş bir koleksiyonunu barındırmaktadır.

Arkeoloji Müzesi: Antik Yunan, Roma, Mısır ve Orta Doğu medeniyetlerine ait birçok eserin sergilendiği bu müze, ziyaretçilere tarih öncesinden Orta Çağ'a kadar uzanan bir dönemi keşfetme fırsatı sunar.

Eski Şark Eserleri Müzesi: Osmanlı İmparatorluğu döneminden kalma sanat eserleri ve el yazmalarını barındıran bu müze, Orta Doğu ve İslam kültürünün zenginliğini yansıtır.

Çinili Köşk: Topkapı Sarayı'nın bahçesinde bulunan bu köşk, Türk-İslam seramiklerinin en güzel örneklerini sergiler.

İstanbul Arkeoloji Müzeleri, tarihe ilgi duyan ziyaretçiler için önemli bir duraktır. Antik eserler, heykeller, eski yazıtlar ve değerli koleksiyonlar, zengin geçmişi ve farklı kültürleri anlamak isteyen herkes için bilgi dolu bir deneyim sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0085, 28.9778), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Yerebatan Sarnıcı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/yerabatan.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Yerebatan Sarnıcı, İstanbul'un tarihi yarımadasında yer alan antik su sarnıcıdır. İstanbul'un Bizans dönemine ait önemli yapılarından biridir. Sarnıç, yer altında bulunan büyüleyici bir atmosferde, sütunlarla desteklenen geniş bir alanı kapsar.

Sarnıç, 6. yüzyılda Bizans İmparatoru Justinianus'un emriyle inşa edilmiştir. 336 adet sütunun taşıdığı bu yapının su depolama amacıyla kullanıldığı düşünülmektedir. Sarnıcın içinde yürürken su sesi ve aydınlatma efektleri ile mistik bir atmosfer oluşturulmuştur.

Yerebatan Sarnıcı, İstanbul'un tarihine ve geçmişine dair derinlemesine bir bakış sunan bir ziyaret noktasıdır. Sarnıcın büyüleyici yapısı ve suyun yansıması, ziyaretçilere benzersiz bir deneyim sunar. Tarih ve mimariye ilgi duyanlar için kesinlikle görülmeye değer bir mekandır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(40.9936, 28.9226), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/muze.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Yedikule Hisarı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/yedikule.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """TYedikule Hisarı, İstanbul'un Yedikule semtinde bulunan tarihi bir kale ve sur sistemidir. İstanbul'un surlarının bir parçası olarak inşa edilen bu hisar, Bizans ve Osmanlı dönemlerinde stratejik bir öneme sahip olmuştur.

İsmi "Yedikule" olan bu hisar, Türkçede "Yedi Kule" anlamına gelir. İçinde yedi burcu barındıran bir kale kompleksidir. Tarihi boyunca hapishane olarak da kullanılmıştır. Ayrıca, Bizans döneminde "Altın Kapı" olarak bilinen girişi ve tarihi surlarıyla dikkat çeker.

Yedikule Hisarı, tarihi ve savunma amaçlı yapısıyla İstanbul'un geçmişine dair önemli bir yansıma sunar. Ziyaretçilere tarihi duvarları, kuleleri ve içindeki atmosferiyle farklı bir deneyim yaşatır. İstanbul'un tarihini ve stratejik önemini anlamak isteyenler için görülmeye değer bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0259, 28.9828), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/muze.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('İstanbul Modern Sanat Müzesi'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/istanbulmodernsanat.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """İstanbul Modern Sanat Müzesi, İstanbul'un Karaköy semtinde bulunan modern sanat eserlerini sergileyen önemli bir müzedir. Türkiye'nin çağdaş sanatın önde gelen eserlerine ev sahipliği yapan bu müze, ziyaretçilere modern sanatın çeşitli yönlerini keşfetme fırsatı sunar.

Müze, 2004 yılında kurulmuş olup çağdaş Türk sanatının ve uluslararası sanatın önemli örneklerini bünyesinde barındırır. Resim, heykel, fotoğraf, video ve diğer sanat formlarına odaklanan geniş bir koleksiyon sunar. Ayrıca, dönemsel sergiler ve etkinliklerle sürekli olarak güncellenir.

İstanbul Modern Sanat Müzesi, sanata ilgi duyanlar ve çağdaş sanatı yakından keşfetmek isteyenler için harika bir seçenektir. Hem Türk sanatının gelişimini görmek hem de uluslararası sanat eserlerini deneyimlemek isteyen ziyaretçilere ilham verici bir mekan sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0383, 28.9984), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Dolmabahçe Sarayı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/dolmabahce.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Dolmabahçe Sarayı, İstanbul Boğazı'nın kıyısında yer alan görkemli bir saraydır. Osmanlı İmparatorluğu'nun son döneminde inşa edilen bu saray, Avrupa tarzındaki mimarisiyle dikkat çeker.

Saray, 19. yüzyılın ortalarında Sultan Abdülmecid tarafından Topkapı Sarayı'nın yerine inşa ettirilmiştir. Crystal Palace'dan esinlenilerek tasarlanan Dolmabahçe Sarayı, batılı tarzdaki lüks ve ihtişamı yansıtmaktadır. Büyük bir sahil hattı ve muhteşem bahçeleri ile etkileyici bir manzaraya sahiptir.

Dolmabahçe Sarayı'nın iç mekanları da görkemlidir. Sarayın içinde yer alan kristal merdivenler, ihtişamlı salonlar ve Osmanlı dönemi mobilyaları ziyaretçilere zengin bir tarihi atmosfer sunar. Ayrıca, Mustafa Kemal Atatürk'ün son zamanlarını geçirdiği özel odası da ziyaret edilebilir.

Dolmabahçe Sarayı, hem tarihi hem de mimari açıdan zengin bir yapıya sahiptir. İstanbul'da tarih ve kültür gezisi yapmak isteyenler için önemli bir duraktır. Sarayın büyüleyici güzellikleri ve tarihi önemi, ziyaretçilere unutulmaz bir deneyim sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0509, 29.0257), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/cami.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Ortaköy Camii'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/ortakoy.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Ortaköy Camii, İstanbul'un Boğaz'ın kıyısındaki Ortaköy semtinde yer alan zarif bir camidir. Barok ve Neoklasik tarzın etkilerini taşıyan bu cami, göz alıcı tasarımı ile dikkat çeker.

yüzyılın başlarında inşa edilen Ortaköy Camii, minyatür bir cami olarak kabul edilir ve özellikle boğaz manzarasının hemen yanında yer almasıyla ünlüdür. İhtişamlı bir kubbesi ve incelikli detayları ile ziyaretçileri etkiler. Ayrıca camiye girişteki güzel bir avlu ve denize bakan bir teras da bulunur.
Ortaköy Camii, hem tarihi hem de estetik açıdan zengin bir deneyim sunar. İstanbul Boğazı'nın hemen kenarında bulunması, ziyaretçilere eşsiz bir manzara imkanı verir. Hem iç mekanındaki zarif tasarım hem de dışarıdaki muhteşem konumu ile görülmeye değer bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0499, 29.0116), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Yıldız Sarayı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/yildizsarayi.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Yıldız Sarayı, İstanbul'un Beşiktaş semtinde yer alan tarihi bir saray kompleksidir. Osmanlı İmparatorluğu'nun son döneminde kullanılan bu saray, büyüleyici bahçeleri ve çeşitli yapılardan oluşan kompleksi ile dikkat çeker. 19.

yüzyılın ortalarından itibaren kullanılan Yıldız Sarayı, padişahların özel yaşam alanı ve devlet işlerini yürüttüğü yer olarak kullanıldı. Saray kompleksi içinde farklı dönemlere ait birçok yapı bulunmaktadır, bunlar arasında köşkler, av köşkleri, hamamlar ve kutsal emanetler odası yer almaktadır.
Yıldız Sarayı'nın bahçeleri, yeşil alanları ve tarihi yapısı ziyaretçilere rahatlatıcı bir atmosfer sunar. Saray içindeki zengin süslemeler, mobilyalar ve tarihi detaylar da önemli bir tarih ve kültürel mirası yansıtır. Ayrıca, sarayın konumu İstanbul Boğazı'nın güzel manzaralarını da sunar.

Yıldız Sarayı, tarih ve mimariyi sevenler için ilgi çekici bir ziyaret noktasıdır. İstanbul'un Osmanlı dönemine dair izlerini yakından görmek isteyenler için de unutulmaz bir deneyim sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0436, 29.0156), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Çırağan Sarayı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/ciragan.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Çırağan Sarayı, İstanbul'un Beşiktaş semtinde bulunan tarihi bir saraydır. Osmanlı İmparatorluğu döneminde inşa edilen bu görkemli saray, Boğaz kıyısında ve eşsiz bir manzaraya sahiptir.

Saray, Sultan Abdülmecid döneminde 19. yüzyılın ortalarında inşa edilmeye başlanmıştır. Ancak 19. yüzyılın sonlarında meydana gelen yangın nedeniyle büyük zarar görmüş ve daha sonra yeniden inşa edilmiştir. Etkileyici tasarımı, batılı etkileri yansıtan ayrıntıları ve zarif mimarisiyle tanınır.

Çırağan Sarayı, tarihi bir yapı ve lüks otel olarak kullanılmaktadır. Ziyaretçilere muhteşem bahçeleri, boğaz manzarası ve tarihi atmosferi sunar. Ayrıca, saray içinde bulunan sergiler ve restoranlar da ziyaretçilere farklı deneyimler sunar.

Çırağan Sarayı, İstanbul'un Osmanlı dönemine ait tarihi ve estetik zenginliğini yansıtan önemli bir yapıdır. Hem tarih ve mimari meraklıları hem de Boğaz'ın eşsiz manzarasının tadını çıkarmak isteyenler için görülmeye değer bir duraktır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0215, 29.0047), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Kız Kulesi'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/kizkulesi.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Kız Kulesi, İstanbul Boğazı'nın ortasında yer alan eşsiz bir yapıdır. Ayrıca Leander Kulesi veya Marmara Kulesi olarak da bilinir. Tarihi ve efsaneleriyle ünlü olan bu kulenin kökeni antik dönemlere dayanmaktadır.

Kız Kulesi, farklı zamanlarda savunma amacıyla kullanılmış ve daha sonra deniz feneri, gümrük istasyonu ve karantina istasyonu olarak kullanılmıştır. Aynı zamanda bir zamanlar efsanevi aşk hikayelerine de konu olmuştur.

Bugün, Kız Kulesi turistik bir mekan olarak kullanılmaktadır. İçerisinde restoran ve kafeler bulunurken, ziyaretçilere boğazın muhteşem manzarası eşlik eder. Kuleye ulaşım teknelerle sağlanmaktadır ve İstanbul'un tarihini ve manzaralarını yakından görmek isteyenler için güzel bir fırsat sunar.

Kız Kulesi, İstanbul'un sembol yapılarından biridir ve tarih, efsaneler ve güzelliklerle dolu bir deneyim sunar. Hem boğaz manzarasının tadını çıkarmak hem de tarihi dokuya tanıklık etmek isteyenler için görülmeye değer bir yerdir."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0428, 29.0400), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/muze.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Beylerbeyi Sarayı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/beylerbeyi.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Beylerbeyi Sarayı, İstanbul Boğazı'nın Anadolu Yakası'nda yer alan tarihi bir saraydır. Osmanlı İmparatorluğu döneminde inşa edilen bu saray, muhteşem Boğaz manzarası, zarif tasarımı ve zengin iç mekanları ile ünlüdür.

Saray, Sultan Abdülmecid döneminde 19. yüzyılın ortalarında inşa edilmiştir. İkinci Abdülhamid döneminde de kullanılan saray, özellikle devlet ziyaretleri ve resmi davetler için kullanılmıştır. Avrupa tarzındaki tasarımı ve zengin süslemeleri, dönemin lüks ve estetik anlayışını yansıtır.

Beylerbeyi Sarayı'nın iç mekanları, farklı odalar, salonlar ve süslemelerle dikkat çeker. Özellikle kristal avizeler, mermer işçiliği ve paha biçilemez mobilyalar ziyaretçilere görsel bir şölen sunar.

Beylerbeyi Sarayı, tarih ve estetiği bir araya getiren özel bir mekandır. İstanbul Boğazı'nın güzelliği ve sarayın zengin iç mekanları, ziyaretçilere unutulmaz bir deneyim yaşatır. İstanbul'un tarihini, kültürel mirasını ve mimarisini keşfetmek isteyenler için kesinlikle görülmeye değer bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0151, 29.0423), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Adile Sultan Kasrı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/adilesultankarsi.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Adile Sultan Kasrı, İstanbul'un Üsküdar semtinde yer alan tarihi bir kasırdır. Adını Sultan Abdülmecid'in kızı Adile Sultan'dan almıştır. Osmanlı dönemine ait bir yapı olan kasır, muhteşem Boğaz manzarası ve zarif tasarımı ile öne çıkar.

Kasır, 19. yüzyılın ortalarında inşa edilmiştir. Yalı tarzındaki mimarisi ve ahşap işçiliği, Osmanlı döneminin zengin sanat anlayışını yansıtır. Adile Sultan Kasrı, aynı zamanda iç mekanında yer alan süslemeler, mobilyalar ve detaylarıyla da göz kamaştırır.

Bugün Adile Sultan Kasrı, etkinlikler, sergiler ve özel organizasyonlar için kullanılmaktadır. İçerisinde bulunan kafe ve restoranlar sayesinde ziyaretçilere keyifli bir deneyim sunar. Ayrıca kasırın bahçesi ve manzarası da ziyaretçileri büyüler.

Adile Sultan Kasrı, tarih ve estetiği bir araya getiren zarif bir yapıdır. İstanbul Boğazı'nın güzelliğini yaşamak, tarihi atmosferi hissetmek ve özel etkinliklerde bulunmak isteyenler için görülmeye değer bir mekan olarak öne çıkar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0348, 29.0726), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/cami.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Çamlıca Camii'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/camlica.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Çamlıca Camii, İstanbul'un Üsküdar semtinde yer alan modern ve büyük bir camidir. Türkiye'nin ve Avrupa'nın en büyük camilerinden biri olarak kabul edilen bu cami, İstanbul Boğazı'nın panoramik manzarasına hakim bir tepede bulunur.

Çamlıca Camii'nin inşaatı 2013 yılında başlamış ve 2019 yılında tamamlanmıştır. Hem modern hem de klasik Osmanlı mimarisi öğelerini taşıyan bu cami, büyük bir kubbesi, minareleri ve zarif tasarımı ile dikkat çeker.

Caminin iç mekanı da oldukça etkileyicidir. Büyük bir ana salon, şık süslemeler ve detaylar ziyaretçilere huzur verici bir atmosfer sunar. Ayrıca cami çevresindeki bahçeler ve teraslar da İstanbul manzarasının tadını çıkarmak için ideal bir mekan sunar.

Çamlıca Camii, modern İstanbul'un sembol yapılarından biridir. Hem dini ibadetler hem de turistik ziyaretler için açıktır. İstanbul'un güzel manzarasını görmek, modern mimariyi yakından incelemek ve caminin iç huzurunu hissetmek isteyenler için kesinlikle görülmeye değer bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0904, 29.0584), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Rumeli Hisarı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Rumeli_Castle.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Rumeli Hisarı, İstanbul Boğazı'nın Avrupa yakasında bulunan tarihi bir kaledir. Osmanlı İmparatorluğu'nun 15. yüzyılda Bizans İmparatorluğu'na karşı inşa ettiği stratejik bir yapıdır. Boğazın kontrolünü ele geçirme amacı taşıyan bu hisar, önemli bir savunma yapısıdır.

Hisar, II. Mehmed (Fatih Sultan Mehmed) tarafından 1452 yılında inşa ettirilmiştir. İstanbul'un fethi öncesinde kullanılan bu hisar, Anadolu Hisarı ile birlikte Boğaz'ın güvenliğini sağlama amaçlı yapılmıştır. Anadolu Hisarı'ndan mancınıklarla karşılıklı atışlar yapılarak inşa edilmiştir.

Rumeli Hisarı'nın görkemli duvarları, kuleleri ve tarihi havası, ziyaretçilere Osmanlı İmparatorluğu'nun askeri stratejilerine dair önemli bir bakış sunar. Hisarın içinde yer alan avlu ve tarihi yapısı, İstanbul'un tarihini ve savunma taktiklerini keşfetmek isteyenler için eşsiz bir deneyim sunar.

Rumeli Hisarı, tarihe ilgi duyanlar ve Osmanlı İmparatorluğu'nun stratejik önemini anlamak isteyenler için ziyaret edilmesi gereken bir mekandır. İstanbul Boğazı'nın güzel manzarası ve tarihi atmosferi ile ziyaretçilere unutulmaz bir deneyim sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 5.0,
      height: 5.0,
      point: LatLng(41.0256, 28.9741), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 20,
          height: 20,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Galata Kulesi'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/galata.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Galata Kulesi, İstanbul'un Beyoğlu semtinde yer alan tarihi bir kuledir. Osmanlı dönemi öncesine dayanan bu kule, Bizans döneminde inşa edilmiş ve sonrasında birkaç kez yenilenmiştir.

Kulenin tam inşa tarihi kesin olarak bilinmese de, 6. yüzyılda Bizans İmparatoru Anastasius tarafından inşa ettirildiği düşünülmektedir. Orta Çağ boyunca savunma amaçlı kullanılan kule, aynı zamanda deniz feneri olarak da kullanılmıştır. Son olarak 1960'lı yıllarda restore edilmiştir.

Galata Kulesi, İstanbul'un sembol yapılarından biridir. Yüksek konumu, ziyaretçilere muhteşem bir panorama sunar. Kuleye çıkan merdivenler sayesinde İstanbul Boğazı, Haliç ve şehir manzaralarının tadını çıkarabilirsiniz.

Galata Kulesi, hem tarihi hem de manzarası ile etkileyici bir deneyim sunar. İstanbul'un tarihini, kültürel mirasını ve güzelliklerini keşfetmek isteyenler için görülmeye değer bir noktadır. Ayrıca sembolik önemi ve panoramik manzarası ile fotoğraf meraklıları için de popüler bir noktadır."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),

    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(41.0822, 29.0668), //
      builder: (context) => GestureDetector(
        child: Image.asset(
          'assets/tarihi.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Anadolu Hisarı'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/anadoluhisari.jpg',
                        width: 200, // Resmin genişliği
                        height: 150, // Resmin yüksekliği
                        fit: BoxFit
                            .cover, // Resmi doldurmak için uygun bir fit modu
                      ),
                      SizedBox(height: 10),
                      Text(
                          """Anadolu Hisarı, İstanbul Boğazı'nın Anadolu Yakası'nda yer alan tarihi bir hisardır. Osmanlı İmparatorluğu'nun 14. yüzyılda Bizans İmparatorluğu'na karşı inşa ettiği stratejik bir yapıdır. Boğaz'ın güvenliğini sağlama ve kontrol amacıyla kurulmuştur.

Hisar, I. Bayezid (Yıldırım Bayezid) tarafından 1394 yılında inşa ettirilmiştir. İstanbul'un fethi öncesinde kullanılan bu hisar, Boğaz'ın girişini kontrol etmek ve ticaret yollarını güvence altına almak amacıyla kurulmuştur.

Anadolu Hisarı'nın görkemli duvarları, kuleleri ve tarihi atmosferi, ziyaretçilere Osmanlı İmparatorluğu'nun stratejik düşüncelerine dair önemli bir bakış sunar. Hisarın içinde yer alan avlu, tarihi yapısı ve manzarası, İstanbul'un tarihini ve savunma stratejilerini daha yakından anlamak isteyenler için ideal bir fırsattır.

Anadolu Hisarı, tarihe ilgi duyanlar ve Osmanlı İmparatorluğu'nun stratejik önemini kavramak isteyenler için görülmeye değer bir mekan olarak öne çıkar. İstanbul Boğazı'nın güzel manzarası ve tarihi atmosferi ile ziyaretçilere unutulmaz bir deneyim sunar."""),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),
  ];
}
