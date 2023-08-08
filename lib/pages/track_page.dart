import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/home_page.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 40.w,
          top: -5.h,
          child: Image.asset('assets/images/slice.png'),
        ),
        Positioned(
          left: -95.w,
          top: -50.h,
          child: Image.asset(
            'assets/images/Ellipse.png',
            height: 470.h,
            width: 560.w,
          ),
        ),
        Positioned(
          left: 138.w,
          top: 120.h,
          child: Image.asset(
            'assets/images/logo.png',
            height: 37.h,
            width: 130.w,
          ),
        ),
      
        Positioned(
            top: 270.h,
            child: Container(
                height: 660.h,
                width: 440.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        topRight: Radius.circular(50.r)),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffC4EAFF),
                        Color(0xffC4EAFF),
                        Color(0xffC4EAFF),
                      ],
                    )),
                child: Stack(
                  children: [
                    Positioned(
                        right: 2.w,
                        top: 20.h,
                        child: Image.asset(
                          'assets/images/,map.png',
                          width: 440.w,
                          height: 300.h,
                        )),
                    Positioned(
                        right: 2.w,
                        top: 20.h,
                        child: Image.asset(
                          'assets/images/,map.png',
                          width: 440.w,
                          height: 300.h,
                        )),
                    Positioned(
                        right: -100.w,
                        top: 150.h,
                        child: Image.asset(
                          'assets/images/time.png',
                          width: 440.w,
                          height: 300.h,
                        )),
                    Positioned(
                        left: -150.w,
                        top: 25.h,
                        child: Image.asset(
                          'assets/images/small.png',
                          width: 440.w,
                          height: 300.h,
                        )),
                    Positioned(
                        left: 20.w,
                        top: 370.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/hat.png',
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Image.asset(
                              'assets/images/line.png',
                            ),
                            Image.asset(
                              'assets/images/home.png',
                            )
                          ],
                        )),
                    Positioned(
                        left: 30.w,
                        top: 370.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "PICK UP FROM",
                              style: TextStyle(
                                color: Color(0xff121212),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "     Cettinad Hotel",
                              style: TextStyle(
                                color: Color(0xff3B94C5),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "               JP nagar 123, Downtown",
                              style: TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50.h),
                            Text(
                              "DELIVERY TO",
                              style: TextStyle(
                                color: Color(0xff121212),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "SAM",
                              style: TextStyle(
                                color: Color(0xff3B94C5),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "                   11,Vinayaka Villa, Adayar",
                              style: TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        right: 100.w,
                        top: 370.h,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/dis.png',
                              ),
                              SizedBox(height: 90.h),
                              Image.asset(
                                'assets/images/dis.png',
                              ),
                            ])),
                    Positioned(
                      left: 90.w,
                      top: 590.h,
                      child: SizedBox(
                          height: 40.h,
                          width: 250.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  shadowColor: Colors.grey,
                                  backgroundColor: const Color(0xffC4EAFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.r)),
                                  )),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (_) => const TrackPage()));
                              },
                              child: Text(
                                "Go to Home page",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ))),
                    ),
                  ],
                ))),
      ],
    ));
  }
}
