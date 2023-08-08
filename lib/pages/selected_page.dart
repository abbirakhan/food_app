import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/databases/database_helper.dart';
import 'package:food_app/pages/cart_page.dart';
import 'package:food_app/pages/home_page.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  bool? check1 = false, check2 = true, check3 = false;
  int _counter = 0;

  @override
  void initState() {
    initData();
    super.initState();
  }

  Future<void> initData() async {
    List<Map<String, dynamic>> items = await DatabaseHelper.getCounters();
    if (items.isEmpty) {
      _counter = 0;
    } else {
      Map<String, dynamic> item = items[0];
      _counter = item['count'];
    }
    // int _counter = 0;

    // void _incrementCounter() {
    //   setState(() {
    //     _counter++;
    //   });
    // }

    // void _decrementCounter() {
    //   setState(() {
    //     _counter--;
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF7F9),
      body: Stack(children: [
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
                    MaterialPageRoute(builder: (_) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 260.h,
          left: 2.w,
          child: Opacity(
            opacity: 0.9,
            child: Container(
              height: 670.h,
              width: 422.w,
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
                    right: 15.w,
                    top: 19.h,
                    child: Container(
                      height: 490.h,
                      width: 390.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25.r)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 247, 75, 156),
                              Color.fromARGB(255, 251, 254, 255),
                            ],
                          )),
                      child: Stack(
                        children: [
                          Positioned(
                              right: -30.w,
                              child: Image.asset(
                                'assets/images/cont.png',
                                width: 440.w,
                                height: 300.h,
                              )),
                          Positioned(
                              top: 280.h,
                              left: 15.w,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/o.png',
                                  ),
                                  SizedBox(width: 5.w),
                                  SizedBox(
                                      height: 22.h,
                                      width: 100.w,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xffCB671F),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20.r)),
                                              )),
                                          onPressed: () {},
                                          child: Text(
                                            "Bestseller",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic),
                                          ))),
                                  const SizedBox(width: 130),
                                  Image.asset(
                                    'assets/images/heart.png',
                                  ),
                                  const SizedBox(width: 18),
                                  Image.asset(
                                    'assets/images/arrow.png',
                                  ),
                                ],
                              )),
                          Positioned(
                              top: 320.h,
                              left: 15.w,
                              child: Text(
                                "Herb Cheese Burger ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                            top: 340.h,
                            left: 14.w,
                            child: Image.asset(
                              'assets/images/s.png',
                            ),
                          ),
                          Positioned(
                              top: 360.h,
                              left: 15.w,
                              child: Text(
                                "Herb tikki ,salsa and cheese",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                            top: 380.h,
                            left: 15.w,
                            child: Row(
                              children: [
                                Text(
                                  "Additional Info ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Image.asset(
                                  'assets/images/v.png',
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 400.h,
                              left: 27.w,
                              child: Text(
                                "Add Extra",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                              top: 425.h,
                              left: 10.w,
                              child: Opacity(
                                opacity: 0.9,
                                child: Container(
                                  height: 40,
                                  width: 340,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffC4EAFF),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 30.w,
                                        top: -3.h,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Dip",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 10.w),
                                            // Icon(
                                            //   Icons.money_off_rounded,
                                            //   color: Colors.black,
                                            // ),
                                            // SizedBox(width: 1.w),
                                            Text(
                                              "\$2",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 5.w),
                                            Checkbox(
                                                value: check1,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    check1 = value;
                                                  });
                                                }),
                                            const SizedBox(width: 60),
                                            Text(
                                              "Cheese ",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 10.w),

                                            Text(
                                              "\$2",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Checkbox(
                                                value: check3,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    check3 = value;
                                                  });
                                                }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 570.h,
                    left: 15.w,
                    child: Row(
                      children: [
                        SizedBox(width: 5.w),
                        SizedBox(
                          height: 35.h,
                          width: 230.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffE52D70),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                  )),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const CardPage()));
                              },
                              child: Text(
                                "Add Item  \$10",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                        ),
                        SizedBox(width: 20.w),
                        Container(
                          height: 35.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              color: Colors.pink,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink.shade500,
                                  blurRadius: 15.0.r,
                                  offset: const Offset(5.0, 5.0),
                                  spreadRadius: 1.0.r)
                            ],
                            borderRadius: BorderRadius.circular(13.0.r),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () async {
                                  if (_counter > 0) {
                                    setState(() {
                                      _counter--;
                                    });
                                    List<Map<String, dynamic>> items =
                                        await DatabaseHelper.getCounters();
                                    if (items.isEmpty) {
                                      await DatabaseHelper.saveCounter(
                                          _counter);
                                    } else {
                                      await DatabaseHelper.updateCounter(
                                          1, _counter);
                                    }
                                    print(items);
                                  }
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.pink,
                                  size: 20.h,
                                ),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text('$_counter',
                                  style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  )),
                              IconButton(
                                onPressed: () async {
                                  setState(() {
                                    _counter++;
                                  });
                                  List<Map<String, dynamic>> items =
                                      await DatabaseHelper.getCounters();
                                  if (items.isEmpty) {
                                    await DatabaseHelper.saveCounter(_counter);
                                  } else {
                                    await DatabaseHelper.updateCounter(
                                        1, _counter);
                                  }
                                  print(items);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.pink,
                                  size: 20.h,
                                ),
                              ),
                            ],
                          ),
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
