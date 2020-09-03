import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:hiRest/hiRestMain.dart';

void main() {
  GoogleMap.init('AIzaSyDIG6BFCHx6vicwfuo87hJqLMcomjEnHYw');
  runApp(Start());
}

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: Colors.white,dividerTheme: DividerThemeData(color: Colors.red)),
      darkTheme: ThemeData.dark().copyWith(dividerTheme: DividerThemeData(color: Colors.red)),
      themeMode: ThemeMode.dark,
      
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

AnimationController controller;
FirebaseMessaging messaging;

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
   
    print(ThemeData.dark().accentColor);
    print(ThemeData.dark().primaryColor);
    controller = AnimationController(
        lowerBound: 1,
        upperBound: 1.1,
        vsync: this,
        duration: Duration(milliseconds: 400));
    controller.repeat(reverse: true);
    gotoMainPage();

    super.initState();
  }

  Future<void> gotoMainPage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        PageRouteBuilder(transitionsBuilder: (__, animation, ani2, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        }, pageBuilder: (_, __, ___) {
          return HiRestMain();
        }));
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: ScaleTransition(
          scale: controller,
          child: Container(
            width: size.width < 600 ? size.width * 0.5 : size.width * 0.2,
            height: size.width < 600 ? size.width * 0.5 : size.width * 0.2,
            child: Image.asset('Assets/images/logo.png'),
          )),
    ));
  }
}
