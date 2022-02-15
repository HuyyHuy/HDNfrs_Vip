import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hdnfr_ver2/screens/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hdnfr_ver2/screens/root.dart';
import 'package:camera/camera.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider<ImageClassifyService>(
//       create: (context) => ImageClassifyService(),
//       child: MyApp(),
//     ),
//   );
// }

// flutter run --no-sound-null-safety

void main(){
  runApp(MyApp());
}

// void getCameras() async {
//   await availableCameras().catchError((e){});
// }
//
// @override
// initState(){
//   initState();
//   getCameras();
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: 'assets/images/icons/hdnbanner.png',
          nextScreen: RootApp(),
          splashTransition: SplashTransition.fadeTransition,
          duration: 1000,
          splashIconSize: 300,
          // pageTransitionType: PageTransitionType.scale
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     if (Platform.isIOS)
//       return CupertinoApp(
//         home: MySplashScreen(),
//         debugShowCheckedModeBanner: false,
//         title: 'HDNFriends',
//       );
//     else
//       return MaterialApp(
//         title: 'HDNFriends',
//         home: MySplashScreen(),
//         debugShowCheckedModeBanner: false,
//       );
//   }
// }
