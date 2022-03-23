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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Mobil Programlama',
                  style: GoogleFonts.hurricane(
                      fontSize: 100.0, backgroundColor: Colors.cyan)),
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                    'Bu uygulama İbrahim AKBAŞ tarafından Selçuk Üniversitesi - Teknoloji Fakültesi - Bilgisayar Mühendisliği Mobil Uygulama dersi kapsamında yapılmıştır.',
                    style: GoogleFonts.hurricane(
                      fontSize: 50.0,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/foto2');
                  },
                  child: Text('Dünyada Gezilebilecek Yerler'),
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
                    Navigator.pushNamed(context, '/foto');
                  },
                  child: Text('Gezilecek Yer Önerileri'),
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
                    Navigator.pushNamed(context, '/olaylar');
                  },
                  child: Text('Önemli Bazı Olaylar'),
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
                    Navigator.pushNamed(context, '/yemek');
                  },
                  child: Text('Yemek Önerileri'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
