import 'package:flutter/material.dart';
import 'package:rzfproject/screen/home_screen.dart';
import 'package:rzfproject/screen/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const SplashScreen();
        }else{
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
          );
        }
      }
    );
  }
}