import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/cart_page.dart';
import 'package:food_app/pages/thanku_page.dart';

class DeliverPage extends StatefulWidget {
  const DeliverPage({super.key});

  @override
  State<DeliverPage> createState() => _DeliverPageState();
}

class _DeliverPageState extends State<DeliverPage> {
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
              left: 10.w,
              top: 40.h,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => CardPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )),
            ),
            Positioned(
              top: 270.h,
              //right: -2.w,
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  height: 660.h,
                  width: 430.w,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90.h,
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15.w),
                            Text(
                              "Delivery Adresss",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            SizedBox(width: 100.w),
                            SizedBox(
                              height: 30.h,
                              width: 110.w,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(2.h),
                                    fillColor: const Color(0xffC4EAFF),
                                    filled: true,
                                    hintText: "Enter pincode",
                                    hintStyle: TextStyle(
                                      fontSize: 16.sp,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.r)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0)),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ))),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.w,
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          height: 35.h,
                          width: 350.w,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(2.h),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "                    Enter Full Name",
                                hintStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xff746868),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius: BorderRadius.circular(12.0.r),
                                  // focusedBorder:  OutlineInputBorder(
                                  //   borderSide: BorderSide(
                                  //     color: Color(0xff6DA9E4),
                                  //   ),
                                )),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          height: 35.h,
                          width: 350.w,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(2.h),
                                fillColor: Colors.white,
                                filled: true,
                                hintText:
                                    "               Enter Compete Address",
                                hintStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xff746868),
                                ),
                                //
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.w),
                                  borderRadius: BorderRadius.circular(12.0.r),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff6DA9E4),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: 360.w,
                          height: 48.h,
                          padding: EdgeInsets.all(7.0),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(2.h),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "      Use Current location",
                                prefixIcon:
                                    Image.asset('assets/images/map.png'),
                                hintStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xff746868),
                                ),
                                //
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0.w),
                                  borderRadius: BorderRadius.circular(12.0.r),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff6DA9E4),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                            height: 45.h,
                            width: 187.w,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffD7145A),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.r)),
                                    )),
                                onPressed: () {},
                                child: Text(
                                  "Save Address",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ))),
                        SizedBox(height: 155.h),
                        Container(
                          height: 140.h,
                          width: 450.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.r),
                                topRight: Radius.circular(50.r)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 25.w),
                              //
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/t.png',
                                    height: 60.h,
                                    width: 70.w,
                                  ),
                                  Image.asset(
                                    'assets/images/pay.png',
                                    height: 60.h,
                                    width: 70.w,
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Pay Using",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600
                                    // fontStyle: FontStyle.italic
                                    ),
                              ),
                              SizedBox(width: 28.w),
                              SizedBox(
                                height: 45.h,
                                width: 180.w,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffD7145A),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r)),
                                        )),
                                    onPressed: () {},
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5.h),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.dollarSign,
                                              color: Colors.white,
                                              size: 12.sp,
                                            ),
                                            SizedBox(width: 1.w),
                                            Text(
                                              "10",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(width: 25.w),
                                            GestureDetector(
                                              onTap: () {
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.r),
                                                  ),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.add,
                                                      )),
                                                );
                                              },
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  const ThankuPage()));
                                                },
                                                child: Text(
                                                  "Place Order",
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "TOTAL",
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.bold,
                                              // fontStyle: FontStyle.italic,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
