import 'package:crud_142/page/login.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kritsada ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 58, 82, 242),
            secondary: Colors.white,
            background: Color.fromARGB(255, 125, 210, 250)),
        useMaterial3: true,
      ),
      home: FlutterSplashScreen.scale(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 57, 82, 243),
            Color.fromARGB(255, 57, 82, 243),
          ],
        ),
        childWidget: SizedBox(
          height: 200,
          child: Image.asset("assets/images/logo-nobg.png"),
        ),
        duration: const Duration(milliseconds: 1500),
        animationDuration: const Duration(milliseconds: 1000),
        onAnimationEnd: () => debugPrint("On Scale End"),
        nextScreen: const LoginScreen(),
      ),
    );
  }
}
