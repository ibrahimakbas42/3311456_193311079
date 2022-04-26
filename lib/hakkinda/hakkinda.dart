import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Mobil Programlama',
                  style: GoogleFonts.hurricane(
                      fontSize: 35.0, backgroundColor: Colors.cyan)),
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                    'Bu uygulama İbrahim AKBAŞ tarafından Selçuk Üniversitesi - Teknoloji Fakültesi - Bilgisayar Mühendisliği Mobil Uygulama dersi kapsamında yapılmıştır.',
                    style: GoogleFonts.hurricane(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/foto2');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dünyada Gezilebilecek Yerler",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/foto');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Türkiye'de Gezilebilecek Yerler",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/olaylar');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bazı Önemli Olaylar",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/yemek');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Yemek Önerileri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/api');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sözlük (English-İngilizce)",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/jestler');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Jestler - Gestures",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/firestore');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Firestore - Firebase",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tarifler');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Yemek Tarifleri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/animation');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Animasyon",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/grafik2');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Grafik",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/todo');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Uygulama Hakkındaki Görüşleriniz...",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => SebzePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ana Sayfaya Dön...",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
