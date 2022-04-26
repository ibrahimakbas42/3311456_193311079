import 'package:flutter/material.dart';
import 'package:bil_bakalim/tarifler/corba.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bil_bakalim/tarifler/et.dart';
import 'package:bil_bakalim/tarifler/sebze.dart';
import 'package:bil_bakalim/tarifler/tatli.dart';
import 'package:bil_bakalim/tarifler/tavuk.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(children: [
      Scaffold(
          body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/menuu.jpg",
                  ),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              SizedBox(
                height: 240,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CorbaPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Çorba",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => EtPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Et Yemekleri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => TavukPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tavuk Yemekleri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SebzePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sebze Yemekleri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 16.0),
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.cyan, // background
              //       onPrimary: Colors.white, // foreground
              //     ),
              //     onPressed: () {
              //       Navigator.pushNamed(context, '/');
              //     },
              //     child: Text('Anasayfaya Dön'),
              //   ),
              // ),

              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => TatliPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tatlı Tarifleri",
                        style: GoogleFonts.shadowsIntoLight(
                          textStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 30,
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
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    ]);
  }
}
