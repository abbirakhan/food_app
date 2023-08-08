import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:flag/flag.dart';
class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF7F9),
      body: Stack(
        children: [
          Positioned(
            left: -15.w,
            top: 31.h,
            child: Image.asset('assets/images/abc.png'),
          ),
          Positioned(
            left: -60.w,
            top: -100.h,
            child: Image.asset(
              'assets/images/Ellipse.png',
              height: 470.h,
              width: 506.w,
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
            //right: -60,
            left: 60.w,
            top: 810.h,
            child: Image.asset(
              'assets/images/bur.png',
              height: 128.h,
              width: 314.w,
            ),
          ),
          Positioned(
            top: 270.h,
            //  left: 37.w,
            right: 40.w,
            child: Container(
              height: 500.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(
                  color: Colors.grey,
                  width: 0,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 15.0.r,
                      offset: const Offset(5.0, 5.0),
                      spreadRadius: 1.0.r)
                ],
                borderRadius: BorderRadius.circular(50.0.r),
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
                  //left: 90.w,
                  right: 70.w,
                  top: 60.h,
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Color(0xff4299D8),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Positioned(
                  left: 31.w,
                  right: 32.h,
                  top: 100.h,
                  child: SizedBox(
                    height: 40.h,
                    width: 286.w,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.h),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 11),
                          ),
                          hintText: "  Enter Full Name",
                          hintStyle: TextStyle(
                            fontSize: 20.sp,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff888D90),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff888D90), width: 1),
                          ),
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
                    top: 150.h,
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
                  top: 180.h,
                  child: SizedBox(
                    height: 40,
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
                    right: 120.h,
                    top: 240.h,
                    child: Text(
                      "Verify your number",
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  left: 70.w,
                  top: 280.h,
                  child: Row(
                    children: [
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
                    left: 50.w,
                    top: 340.h,
                    child: SizedBox(
                        height: 30,
                        width: 230,
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
                            child: const Text(
                              "Create Account",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            )))),
                Positioned(
                  left: 60.w,
                  top: 380.h,
                  child: Row(
                    children: [
                      Text(
                        "Do you already have account?",
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
                                  builder: (_) => const LoginPage()));
                        },
                        child: Text(
                          "Login",
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
                  top: 400.h,
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 69,
                    width: 69,
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
