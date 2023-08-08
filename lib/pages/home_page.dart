import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/cart_page.dart';
import 'package:food_app/pages/selected_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  // SizedBox(
                  //   height: 30.h,
                  // ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.w,
                      ),
                      Icon(
                        Icons.menu,
                        size: 50.h,
                      ),
                      SizedBox(
                        width: 250.w,
                      ),
                      Image.asset(
                        'assets/images/pro.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "        Chose the",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 25.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "        Food you Love",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 25.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(),
                        height: 80.h,
                        width: 400.w,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon:
                                const Icon(Icons.search, color: Colors.white),
                            fillColor: const Color(0xffC4EAFF),
                            filled: true,
                            contentPadding: EdgeInsets.all(20.h),
                            hintText: "Search Food  Here Foody",
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff3F6F89),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(34.r)),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(34.r)),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                          ),
                        )),
                  ),
                  Text(
                    "     Categories",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 140.h,
                            width: 200.w,
                            child: Card(
                              color: Color(0xffC4EAFF),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 20.h),
                                Image.asset(
                                  'assets/images/three.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                    color: const Color(0xffDB336F),
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                )
                              ]),
                            )),
                        SizedBox(
                            height: 140.h,
                            width: 200.w,
                            child: Card(
                              color: Color(0xffC4EAFF),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 20.h),
                                Image.asset(
                                  'assets/images/two.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "pizza",
                                  style: TextStyle(
                                    color: const Color(0xffDB336F),
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                )
                              ]),
                            )),
                        SizedBox(
                            height: 140.h,
                            width: 200.w,
                            child: Card(
                              color: Color(0xffC4EAFF),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 20.h),
                                Image.asset(
                                  'assets/images/one.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "coffee",
                                  style: TextStyle(
                                    color: const Color(0xffDB336F),
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                )
                              ]),
                            )),
                      ],
                    ),
                  ),
                  Text(
                    "     Burgers",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 300.h,
                            width: 200.w,
                            child: Card(
                              color: Color(0xffFF005C),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 20.h),
                                Image.asset(
                                  'assets/images/four.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Combo Burger",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    SizedBox(width: 30.h),
                                    Text(
                                      "\$10",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "SofiaProR",
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    SizedBox(width: 70.h),
                                    Container(
                                      margin: EdgeInsets.all(2.r),
                                      height: 35.h,
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
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            const SelectPage()));
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          )),
                                    ),
                                    //
                                  ],
                                )
                              ]),
                            )),
                        SizedBox(
                            height: 250.h,
                            width: 170.w,
                            child: Card(
                              color: Color(0xff8ED1F6),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 10.h),
                                Image.asset(
                                  'assets/images/five.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  " Burger",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    SizedBox(width: 20.h),
                                    Text(
                                      "\$10",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "SofiaProR",
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    SizedBox(width: 30.h),
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
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            const SelectPage()));
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          )),
                                    ),
                                    //
                                  ],
                                )
                              ]),
                            )),
                        SizedBox(
                            height: 250.h,
                            width: 170.w,
                            child: Card(
                              color: Color(0xff8ED1F6),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.r),
                                ),
                              ),
                              child: Column(children: [
                                SizedBox(height: 30.h),
                                Image.asset(
                                  'assets/images/abc.png',
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  " Burger",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SofiaProR",
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    SizedBox(width: 20.h),
                                    Text(
                                      "\$10",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "SofiaProR",
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    SizedBox(width: 30.h),
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
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            const SelectPage()));
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          )),
                                    ),
                                    //
                                  ],
                                )
                              ]),
                            )),
                      ],
                    ),
                  ),
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
                                  builder: (_) => const CardPage()));
                        },
                        icon: Icon(
                          Icons.shopping_bag,
                        )),
                  ),
                ]))),
      ),
    );
  }
}
