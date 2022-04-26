import 'hakkinda/foto.dart';
import 'hakkinda/foto2.dart';
import 'sorular/hata.dart';
import 'hakkinda/olaylar.dart';
import 'sorular/sorular.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'sorular/bitir.dart';
import 'hakkinda/hakkinda.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hakkinda/yemek.dart';
import 'grafik/LineChartSample1.dart';
import 'grafik/linechartsample2.dart';
import 'sqllite/todo.dart';
import 'gestures/jestler.dart';
import 'api/api.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firestore/firestore.dart';
import 'tarifler/home.dart';
import 'animation/animationn.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bil Bakalım',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sorular': (context) => Sorular(),
        '/bitir': (context) => Bitir(),
        '/hakkinda': (context) => Hakkinda(),
        '/hata': (context) => Hata(),
        '/foto': (context) => Foto(),
        '/foto2': (context) => Foto2(),
        '/yemek': (context) => Yemek(),
        '/olaylar': (context) => Olaylar(),
        '/grafik': (context) => LineChartSample1(),
        '/grafik2': (context) => LineChartSample2(),
        '/todo': (context) => Todo(),
        '/jestler': (context) => Jestler(),
        '/api': (context) => Api(),
        '/firestore': (context) => Firestore(),
        '/tarifler': (context) => HomePage(),
        '/animation': (context) => SplashScreen(),
      },
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   //const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // var PageTransitionType;
//     return AnimatedSplashScreen(
//       splash: Lottie.asset('assets/images/loader.json'),
//       nextScreen: SplashScreen(),
//       splashIconSize: 600,
//       duration: 4000,
//       splashTransition: SplashTransition.fadeTransition,
//       // pageTransitionType: PageTransitionType.topToBottom,
//       animationDuration: /*const*/ Duration(seconds: 1),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';
  String ogrNo = '';

  void kontrol() {
    if ((adSoyad.length > 9) && (ogrNo.length == 9)) {
      var data = [];
      data.add(adSoyad);
      data.add(ogrNo);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sorular(),
            settings: RouteSettings(
              arguments: data,
            ), //builder: (BuildContext context) {  },
          ));
    } else {
      Navigator.pushNamed(context, '/hata');
    }
  }

  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  void _ogrNoKaydet(String text) {
    setState(() {
      ogrNo = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;
    if ((adSoyad.length > 9) && (ogrNo.length == 9)) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.lime,
                backgroundImage: AssetImage('assets/images/bilbakalim.png'),
              ),
              /* Text(
                '....',
                style: GoogleFonts.anton(fontSize: 30.0, color: Colors.cyan),
              ),*/
              Text(
                'Adınız ve Soyadınız:',
                style:
                    GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan[400]),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Adınızı ve Soyadınızı giriniz',
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    onChanged: (text) {
                      _adSoyadKaydet(text);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Öğrenci Numaranız:',
                style:
                    GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan[400]),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                ),
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    maxLength: 9,
                    decoration: const InputDecoration(
                      hintText: 'Öğrenci numaranızı giriniz',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (text) {
                      _ogrNoKaydet(text);
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                //padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: butonpasif ? null : kontrol,
                  //onPressed: kontrol,
                  child: Text(
                    'Sınava Başla',
                    style:
                        GoogleFonts.anton(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                ),
                //padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/animation');
                  },
                  // onPressed: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Hakkinda()),
                  //   );
                  // },
                  child: Text(
                    'Çeşitli Uygulamalar İçin Tıklayınız',
                    style:
                        GoogleFonts.anton(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(
              //     horizontal: 45.0,
              //   ),
              //   //padding: const EdgeInsets.symmetric(vertical: 8.0),
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.cyan, // background
              //       onPrimary: Colors.white, // foreground
              //     ),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Animasyon()),
              //       );
              //     },
              //     child: Text('Animasyon'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
