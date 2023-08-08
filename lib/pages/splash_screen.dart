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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffD21D5E),
            Color(0xffDC0D57),
            Color(0xffD7195D),
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
              SizedBox(height: 150.h),
              Image.asset('assets/images/burger.png'),
              //
            ],
          ),
        ),
      ),
    );
  }
}
