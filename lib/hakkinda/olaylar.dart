import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Olaylar extends StatefulWidget {
  @override
  _OlaylarState createState() => _OlaylarState();
}

class _OlaylarState extends State<Olaylar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Önemli Bazı Olaylar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                    "Fransa Milli İstatistik Enstitüsünün raporuna göre 2007 yılında Fransada doğan 1 milyona yakın (800 binin üstünde) çocuğun yüzde 51i evlilik dışıdır. Irak Milli Kadın Meclisi Başkanı Raca el-Huzai'ye göre; Irak'ta her ay 3 bin kadın dul kalmaktadır. Nijerde 40 bin kişiye, Burkina Faso'da 35 bin kişiye ve Sudan'da 9 bin kişiye 1 adet doktor düşmektedir. Her 10 saniyede 1 Afrikalı çocuk önlenebilir hastalıklar sebebiyle ölmektedir. İsviçreli orta hâlli birinin geliri 400 Etiyopyalının gelirine eşittir. Şu anda kendi anavatanlarından kaçan 14 milyon 200 bin mülteci başka ülkelerdedir. 24 milyonu ise göçe zorlanmaktadır. 32 milyon 900 bin kişi ise kendi vatanlarında endişe içinde yaşamaktadırlar. 6 milyon 300 bin Filistinli ise vatanlarına dönme hayali içindedir. (Bu 6 milyon 300 bin Filistinli 14 milyon 200 bin mülteciye dahil değildir.) Bazı çevreci bilim adamlarına göre 2050 yılında küresel ısınma ve kuraklık sebebiyle 1 milyar (1 milyon değil) insan göç etmek zorunda kalacaktır. Rusyanın Çeçenistanda 20 nükleer çöp deposu olup, bu çöpler 500 bin tondur. 1994ten bu yana Çeçenistanda 300 binden fazla Çeçen öldürüldü. 500 bin Çeçen ise Çeçenistan dışına göç etti. Şu anda dünyada 27 milyon insan köledir. Ve 127 ülke insan kaçakçılığı kaynağıdır. Dünyada 300 bin çocuk asker vardır. Nepal ön sıradadır. Emperyalist güçler 3. dünya ülkelerini, fakir ve gelişmekte olan ülkeleri büyük bir borç bataklığına haksız bir şekilde sokmaktadır. Bu ülkelerin kaynaklarını sömürmekte ve devamlı kendine bağımlı hale getirmektedir. Bir İslam ülkesi olan Nijerde her yıl 100 bin çocuk açlık ve yeterli beslenemediği için ölmektedir. Sierra Leona zengin ama yoksulluk içinde yaşayan ülkedir. Dünyanın en kıymetli elmas, altın ve titanyumu bu ülkededir. Hristiyanlar yüzde 10 olmasına rağmen ülkeye hakimdir. Müslümanlar yüzde 70 ise de misyoner faaliyetleri ile giderek azalmaktadır. Nüfusu 6 milyondur. Müslüman çocuklar gündüzleri Avrupalıların çiftliklerinde çalışıp, geceleri ise yakılan bir ateşin çevresinde Kuran-ı kerim dersi görmektedirler. Haiti, Afrikadan getirilen kölelerin nesilleridir. Nüfusun yüzde 80i yoksul ve yüzde 54ü ise açlık sınırındadır. Bulgaristanda Türklerin ve Müslümanların 350 bin oyu ile üçüncü parti olan Hak ve Özgürlükler Hareketi 264 belediyeden 35ini tek başına, 8 belediyeyi koalisyon olarak kazandı. Fransız yardım maskeli misyoner teşkilatı Çad ve Darfurdan topladığı 103 çocuğu Fransaya kaçırırken yakalandı. ABDde son 20 yıl içinde yoksul çocuk sayısı 3 misli artmıştır. Gine Bissaunun nüfusu 2 milyona yakındır. Ortalama ömür 40 yaştır. Yüzde 45i Müslüman olmasına rağmen ülkeye yüzde 5 olan Hristiyanlar hakimdir. 20 sene önce Afrikalı Müslümanların dini liderlerinin ülke dışına çıkmaları imkânsız idi. 1-3 Kasım 2006 tarihinde Diyanet İşleri Başkanlığının daveti üzerine 22 Afrika ülkesinin Müslüman dini liderleri İstanbulda zirve toplantısı yapması çok önemli bir adımdır. ABD nin Irakı işgal etmeden önce Orta Doğuda etkisi yüzde 60ın üstünde idi. AB yüzde 10, İran yüzde 5, Arap ülkeleri yüzde 3 idi. Bugün bu oran ABD yüzde 20, İran yüzde 30, Arap ülkeleri yüzde 30 şeklindedir. ",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
