import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFFFFFF),
            ],
          )),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 300.h),
                Image.asset('assets/images/restaurant.png'),
                SizedBox(height: 13.h),
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 24.h),
                SizedBox(height: 145.h),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
