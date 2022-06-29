import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vogon_chat/app_router.dart';
import 'package:vogon_chat/rotas.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      setState(() {
        nivelOpacidade = 1.0;
      });
      Timer(const Duration(seconds: 2), () {
        AppRouter.gotoPush(nomeRota: rotaHome);
      });
    });
    super.initState();
  }

  var nivelOpacidade = 0.0;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: [Color(0xFF3a0184), Color(0xFF9370c1)],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: _size.height / 2 + 24,
              alignment: Alignment.bottomCenter,
              child: AnimatedOpacity(
                opacity: nivelOpacidade,
                duration: const Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/zap2.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
            Container(
              height: _size.height / 2 - 24,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Vogon Chat',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
