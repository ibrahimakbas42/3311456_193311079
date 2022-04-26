import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bil_bakalim/main.dart';
import 'package:bil_bakalim/tarifler/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:proje/Sayfalar/Anasayfa.dart';
// import 'package:proje/Sayfalar/Giris.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// // String? kullaniciID;
// // String? kullaniciAdi;
// // String? kullaniciSoyadi;
// // String? kullaniciEmail;
//
// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // SharedPreferences veri = await SharedPreferences.getInstance();
//   // kullaniciID = veri.getString("kullaniciID");
//   // kullaniciAdi = veri.getString("kullaniciAd");
//   // kullaniciSoyadi = veri.getString("kullaniciSoyad");
//   // kullaniciEmail = veri.getString("kullaniciEmail");
//   runApp(App());
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Firebase.initializeApp(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Text(snapshot.error.toString());
//         }
//         //if (snapshot.connectionState == ConnectionState.done) {
void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/lg.png',
      nextScreen: MyHomePage(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: AnimatedSplashScreen(
    //     nextScreen: HomePage(),
    //     splashTransition: SplashTransition.rotationTransition,
    //     backgroundColor: Colors.white,
    //     splash: Image.asset(
    //       "assets/images/lg.png",
    //     ),
    //   ),
    // );
    //  }
    // return Center(child: CircularProgressIndicator());
  }
}
