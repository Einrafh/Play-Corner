import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_corner/screens/ub_auth.dart';

import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 360,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48),
                  bottomRight: Radius.circular(48),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 72,
                  ),
                  Image.asset(
                    'assets/images/Logo.png',
                    height: 128,
                    width: 128,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "PLAY ",
                      style: TextStyle(
                          color: Color(0xFF002647),
                          fontSize: 36,
                          fontWeight: FontWeight.w900
                      ),
                      children: [
                        TextSpan(
                          text: "CORNER",
                          style: TextStyle(
                              color: Color(0xFFEC831E),
                              fontSize: 36
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 128,
                  ),
                  const Text(
                    "Selamat Datang",
                    style: TextStyle(
                      color: Color(0xFF002647),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Temukan pengalaman bermain\nbersama Game Corner!",
                    style: TextStyle(
                      color: Color(0xFF55565B),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Image.asset(
                    'assets/images/PlayMascot.png',
                    height: 192,
                    width: 192,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UBAuthScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEC831E),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "MASUK DENGAN AKUN UB",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}