import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/create_page.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:flag/flag.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF7F9),
      body: Stack(
        children: [
          Positioned(
            left: 10.w,
            top: 31.h,
            child: Image.asset('assets/images/pizza.png'),
          ),
          Positioned(
            left: -60.w,
            top: -100.h,
            child: Image.asset(
              'assets/images/Ellipse.png',
              height: 470.h,
              width: 480.w,
            ),
          ),
          Positioned(
            left: 148.w,
            right: 148.w,
            top: 130.h,
            child: Image.asset(
              'assets/images/logo.png',
              height: 37.h,
              width: 130.w,
            ),
          ),
          Positioned(
            left: -20.w,
            top: 680.h,
            child: Image.asset(
              'assets/images/food.png',
              height: 237.h,
              width: 237.w,
            ),
          ),
          Positioned(
            right: -70.w,
            top: 740.h,
            child: Image.asset(
              'assets/images/sand.png',
              height: 220.h,
              width: 450.w,
            ),
          ),
          Positioned(
            top: 290.h,
            left: 37.w,
            right: 47.w,
            child: Container(
              height: 450.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(
                  color: Colors.grey,
                  width: 0,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 15.0,
                      offset: const Offset(5.0, 5.0),
                      spreadRadius: 1.0)
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Stack(children: [
                Positioned(
                  left: 132.w,
                  right: 130.w,
                  top: 0.h,
                  child: Image.asset(
                    'assets/images/pro.png',
                    height: 60.h,
                    width: 67.w,
                  ),
                ),
                Positioned(
                  right: 130.w,
                  top: 60.h,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xff4299D8),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Positioned(
                    left: 38.w,
                    right: 150.w,
                    top: 100.h,
                    child: Text(
                      "Phone Num",
                      style: GoogleFonts.lato(
                          fontSize: 15.sp,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  left: 31.w,
                  right: 32.w,
                  top: 130.h,
                  child: SizedBox(
                    height: 40.h,
                    width: 286.w,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.h),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 11.w),
                            child: Image.asset(
                              'assets/images/pakistan.png',
                              height: 0.h,
                              width: 1.w,
                            ),
                          ),
                          //prefixIcon: Flag.fromCode(FlagsCode.PK, height:20, width: 100 * 5/ 5),
                          hintText: " +92-XXXXXXXXXX",
                          hintStyle: TextStyle(
                            fontSize: 15.sp,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff888D90),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff888D90), width: 1)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                  ),
                ),
                Positioned(
                    left: 38.w,
                    right: 150.w,
                    top: 180.h,
                    child: Text(
                      "Enter OTP",
                      style: GoogleFonts.lato(
                          fontSize: 15.sp,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  left: 70.w,
                  top: 220.h,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 45,
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.h),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "*",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff5E5B5B),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60.r)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff5E5B5B), width: 0)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DA9E4),
                              ))),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        height: 45.h,
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.h),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "*",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff5E5B5B),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60.r)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff5E5B5B), width: 0)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DA9E4),
                              ))),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      SizedBox(
                        height: 45,
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.h),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "*",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff5E5B5B),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60.r)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff5E5B5B), width: 0)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DA9E4),
                              ))),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      SizedBox(
                        height: 45.h,
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.h),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "*",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff5E5B5B),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60.r)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff5E5B5B), width: 0)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DA9E4),
                              ))),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 60.w,
                    top: 280.h,
                    child: SizedBox(
                        height: 30.h,
                        width: 240.w,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffD7145A),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r)),
                                )),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const HomePage()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            )))),
                Positioned(
                  left: 60.w,
                  top: 320.h,
                  child: Row(
                    children: [
                      Text(
                        "Do not have an account?",
                        style: TextStyle(
                            color: const Color(0xff363636),
                            fontSize: 12.sp,
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(width: 1.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const CreatePage()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: const Color(0xff4299D8),
                            fontSize: 20.sp,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w100,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xff4299D8),
                            decorationThickness: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 140.w,
                  top: 350.h,
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 69.h,
                    width: 69.w,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
