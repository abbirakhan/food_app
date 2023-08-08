import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/delivery_address_page.dart';
import 'package:food_app/pages/home_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF7F9),
      body: Stack(children: [
        Positioned(
          left: -20.w,
          top: -5.h,
          child: Image.asset('assets/images/piz.png'),
        ),
        Positioned(
          left: -65.w,
          top: -70.h,
          child: Image.asset(
            'assets/images/Ellipse.png',
            height: 470.h,
            width: 510.w,
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
                    MaterialPageRoute(builder: (_) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 240,
          child: Opacity(
            opacity: 0.9,
            child: Container(
              height: 900.h,
              width: 440.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      //  Color.fromARGB(255, 165, 223, 245),
                      Color(0xffC4EAFF),
                      Color(0xffC4EAFF),
                      Color(0xffC4EAFF),
                      // Color.fromARGB(255, 162, 234, 250),
                      // Color.fromARGB(255, 179, 237, 247),
                    ],
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 97.h),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Items Added",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(width: 170.w),
                          Text(
                            "clear  all",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffC4EAFF),
                          side: const BorderSide(
                              color: Colors.white, width: 1.7))),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      SizedBox(width: 15.w),
                      Image.asset(
                        'assets/images/cont.png',
                        height: 60.h,
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Herb Cheese Burger ",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Row(
                            children: [
                              //  const SizedBox(width: 10),
                              FaIcon(
                                FontAwesomeIcons.dollarSign,
                                color: Colors.black,
                                size: 14.sp,
                              ),
                              SizedBox(width: 1),
                              Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 60.w),
                      Column(
                        children: [
                          Container(
                            height: 35.h,
                            width: 125.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffC4EAFF),
                              border: Border.all(
                                color: Colors.pink,
                                width: 1.w,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.pink.shade500,
                                    blurRadius: 15.0,
                                    offset: const Offset(5.0, 5.0),
                                    spreadRadius: 1.0)
                              ],
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: _decrementCounter,
                                    icon: Icon(
                                      Icons.minimize,
                                      color: Colors.pink,
                                      size: 15.sp,
                                    )),
                                Text('$_counter',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      color: Colors.black,
                                    )),
                                IconButton(
                                  onPressed: _incrementCounter,
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.pink,
                                    size: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SizedBox(width: 40.w),
                              FaIcon(
                                FontAwesomeIcons.dollarSign,
                                color: Colors.black,
                                size: 16.sp,
                              ),
                              SizedBox(width: 1),
                              Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 280.h),
                  Container(
                    height: 170.h,
                    width: 500.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 33.w),
                        Image.asset(
                          'assets/images/cart.png',
                          height: 60.h,
                          width: 70.w,
                        ),
                        SizedBox(width: 25),
                        Text(
                          " 1 ITEM ADDED",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                              // fontStyle: FontStyle.italic
                              ),
                        ),
                        SizedBox(width: 40.w),
                        SizedBox(
                          height: 38.h,
                          width: 100.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffD7145A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r)),
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
                                                    const DeliverPage()));
                                      },
                                      icon: Icon(
                                        Icons.add,
                                      )),
                                );
                              },
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const DeliverPage()));
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
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
      ]),
    );
  }
}
