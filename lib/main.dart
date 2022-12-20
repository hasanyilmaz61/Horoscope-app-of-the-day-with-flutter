import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(horoskop());
}

class horoskop extends StatelessWidget {
  const horoskop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          centerTitle: true,
          title: Text(
            "Gunun Fali",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
        body: fall(),
      ),
    );
  }
}

class fall extends StatefulWidget {
  const fall({Key? key}) : super(key: key);

  @override
  State<fall> createState() => _fallState();
}

class _fallState extends State<fall> {
  int sonuc = 0;

  List<String> Durum = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  void yorum() {
    setState(() {
      sonuc = Random().nextInt(5) + 1;
      print("ask butonu durumuna tiklandi");
    });
  }

  void yorum2() {
    setState(() {
      sonuc = Random().nextInt(5) + 1;
      print("para butonu durumuna tiklandi");
    });
  }

  void yorum3() {
    setState(() {
      sonuc = Random().nextInt(5) + 1;
      print("tavsiye butonu durumuna tiklandi");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Image.asset(
              "assets/falci.png",
              width: 150,
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: yorum,
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "ASK DURUMU",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: yorum2,
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.green,
                      size: 40,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "PARA DURUMU",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: yorum3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.textsms_outlined,
                      color: Colors.blue[200],
                      size: 40,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "GÜNLÜK TAVSIYE",
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(Durum[sonuc],
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
