import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bitir extends StatefulWidget {
  @override
  _BitirState createState() => _BitirState();
}

class _BitirState extends State<Bitir> {
  @override
  Widget build(BuildContext context) {
    Object? data = [];
    data = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('"Bil Bakalım" yarışmamızdan elde ettiğiniz sonuç:',
            //     style: GoogleFonts.anton(fontSize: 40.0, color: Colors.cyan)),
            // Text(data[0].toString(),
            //     style: GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan)),
            // Text(data[1].toString(),
            //     style: GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan)),
            // Text('Puanınız:',
            //     style: GoogleFonts.anton(fontSize: 30.0, color: Colors.black)),
            // Text(data[2].toString(),
            //     style: GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan)),
            // Text('Geçen Süre:',
            //     style: GoogleFonts.anton(fontSize: 30.0, color: Colors.black)),
            // Text(data[3].toString(),
            //     style: GoogleFonts.anton(fontSize: 20.0, color: Colors.cyan)),
            // // Text('Github değişiklik kontrolü için eklendi'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Anasayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
