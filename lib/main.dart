import 'package:constructoncostestimator/Screens/Home.dart';
import 'package:constructoncostestimator/Screens/SplashScreen.dart';

// import 'package:constructoncostestimator/Screens/SplashScreen.dart';
// import 'package:constructoncostestimator/Screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      home: const Splashscreen(),
    );
  }
}
