import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/track_page.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankuPage extends StatefulWidget {
  const ThankuPage({super.key});

  @override
  State<ThankuPage> createState() => _ThankuPageState();
}

class _ThankuPageState extends State<ThankuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF7F9),
        body: Stack(
          children: [
            Positioned(
              left: -20.w,
              top: -5.h,
              child: Image.asset('assets/images/piz.png'),
            ),
            Positioned(
              left: -60.w,
              top: -60.h,
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
              top: 270.h,
              child: Opacity(
                opacity: 0.9,
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 30.h),
                        Image.asset(
                          'assets/images/b.png',
                          height: 320.h,
                        ),
                        Text(
                          "    Thank you for",
                          style: TextStyle(
                              color: Color(0xffD3165A),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          "      your order",
                          style: TextStyle(
                              color: Color(0xffD3165A),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          "         You are track your Order",
                          style: TextStyle(
                              color: Color(0xff746868),
                              fontSize: 15.sp,
                              //ontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          "           in my order section",
                          style: TextStyle(
                              color: Color(0xff746868),
                              fontSize: 15.sp,
                              // fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                            height: 40.h,
                            width: 300.w,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 4,
                                    shadowColor: const Color(0xffC4EAFF),
                                    backgroundColor: const Color(0xffD7145A),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.r)),
                                    )),
                                onPressed: () {
                                  Container(
                                    margin: EdgeInsets.all(2.r),
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCC00FF),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.r,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      const TrackPage()));
                                        },
                                        icon: Icon(
                                          Icons.add,
                                        )),
                                  );
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) => const TrackPage()));
                                  },
                                  child: const Text(
                                    "Track my Order",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 90.w,
              top: 850.h,
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const HomePage()));
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
        ));
  }
}
