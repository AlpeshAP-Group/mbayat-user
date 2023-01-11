import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/screens/pages/notification.dart';
import 'package:mbayat/screens/pages/product.dart';

class MonthlySavingsPage extends StatefulWidget {
  const MonthlySavingsPage({super.key});

  @override
  State<MonthlySavingsPage> createState() => _MonthlySavingsPageState();
}

class _MonthlySavingsPageState extends State<MonthlySavingsPage> {
  var recentlysong = [];

  @override
  void initState() {
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: bgColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        )),
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()));
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/svg/notification.svg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      'assets/svg/cancel.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Center(
            child: Text(
          "March 2022",
          style: TextStyle(
            color: white,
            fontFamily: 'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: aMargin,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: aMargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: Image.asset(
                                        'assets/img/p1.png',
                                      ).image,
                                    ),
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appbarColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 33,
                                        width: 33,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/svg/heartfill.svg',
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Print Boots',
                                          style: textTheme.headline2,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text('KWD 243',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  177, 43, 82, 1),
                                              fontFamily: 'Urbanist',
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appbarColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 33,
                                      width: 33,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/svg/cart.svg',
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: aMargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: Image.asset(
                                        'assets/img/p1.png',
                                      ).image,
                                    ),
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appbarColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 33,
                                        width: 33,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/svg/heart.svg',
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Print Boots',
                                          style: textTheme.headline2,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text('KWD 243',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  177, 43, 82, 1),
                                              fontFamily: 'Urbanist',
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appbarColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 33,
                                      width: 33,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/svg/cart.svg',
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: aMargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: Image.asset(
                                        'assets/img/p1.png',
                                      ).image,
                                    ),
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appbarColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 33,
                                        width: 33,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/svg/heart.svg',
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Print Boots',
                                          style: textTheme.headline2,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text('KWD 243',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  177, 43, 82, 1),
                                              fontFamily: 'Urbanist',
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appbarColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 33,
                                      width: 33,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/svg/cart.svg',
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: aMargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: Image.asset(
                                        'assets/img/p1.png',
                                      ).image,
                                    ),
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appbarColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 33,
                                        width: 33,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/svg/heart.svg',
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Print Boots',
                                          style: textTheme.headline2,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text('KWD 243',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  177, 43, 82, 1),
                                              fontFamily: 'Urbanist',
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appbarColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 33,
                                      width: 33,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/svg/cart.svg',
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          width: 170.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: aMargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: Image.asset(
                                        'assets/img/p1.png',
                                      ).image,
                                    ),
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appbarColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 33,
                                        width: 33,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/svg/heart.svg',
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Print Boots',
                                          style: textTheme.headline2,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text('KWD 243',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  177, 43, 82, 1),
                                              fontFamily: 'Urbanist',
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appbarColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 33,
                                      width: 33,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/svg/cart.svg',
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55.h,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: toogle,
            child: bottomDetailsSheet(),
          ),
        ],
      ),
    );
  }

  toogle() {
    // final bool isCompleted
  }

  var textChange = 0;
  var metrics;
  bool _on = false;
  // final _scrollController = new ScrollController();
  ScrollController _scrollController = ScrollController();

  // void _showModelBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
  //     builder: (context) => const SingleChildScrollView(),
  //   );
  // }

  Widget bottomDetailsSheet() {
    return DraggableScrollableSheet(
      initialChildSize: .2,
      minChildSize: .1,
      maxChildSize: .6,
      snapSizes: metrics,
      snap: true,
      // expand: false,
      //  metrics = scrollEnd.metrics;
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  spreadRadius: 3.0,
                  offset: Offset(
                    3.0,
                    3.0,
                  ),
                )
              ],
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: ListView(
            controller: scrollController,
            children: [
              SizedBox(height: 7.h),
              Divider(
                color: Color.fromARGB(255, 156, 181, 193),
                thickness: 4,
                endIndent: 140,
                indent: 140,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Savings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: green),
                        ),
                      ],
                    ),
                  ),
                  // Divider(
                  //   thickness: 2,
                  //   color: green,
                  //   indent: 60,
                  //   endIndent: 60,
                  // )
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 8.0, right: 20),
                  //   child: Row(
                  //     children: [
                  //       _on
                  //           ? Row(
                  //               children: [
                  //                 InkWell(
                  //                   child: Text(
                  //                     "Pull UP TO View  ",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         color: green),
                  //                   ),
                  //                   onTap: () {
                  //                     bottomDetailsSheet();
                  //                   },
                  //                 ),
                  //                 SvgPicture.asset(
                  //                   'assets/svg/arrowup.svg',
                  //                   height: 15.h,
                  //                 ),
                  //               ],
                  //             )
                  //           : Row(
                  //               children: [
                  //                 InkWell(
                  //                   onTap: () {
                  //                     bottomDetailsSheet();
                  //                   },
                  //                   child: Text(
                  //                     "Pull Down TO Close  ",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         color: green),
                  //                   ),
                  //                 ),
                  //                 SvgPicture.asset(
                  //                   'assets/svg/arrowdown.svg',
                  //                   height: 15.h,
                  //                 )
                  //               ],
                  //             ),
                  //     ],
                  //   ),
                  // )
                ],
                // ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 3.0),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SvgPicture.asset(
              //         'assets/svg/Home Indicator.svg',
              //         // height: 2,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 300.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 222, 220, 220),
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      )
                    ],
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Container(
                        height: 30.h,
                        width: double.infinity,
                        color: Color.fromARGB(255, 136, 208, 206),
                        child: Center(
                          child: Text(
                            "56KD Box Value",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Container(
                              height: 80.h,
                              width: 75.w,
                              // color: green,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 204, 131, 35),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        )),
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Yoga\n20KD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: black),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Buy",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              )),
                          SizedBox(width: 3.w),
                          SvgPicture.asset(
                            'assets/svg/Dark.svg',
                            height: 90.h,
                          ),
                          SizedBox(width: 3.w),
                          Container(
                              height: 80.h,
                              width: 85.w,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: green,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        )),
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Meditation\n13KD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: black),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Buy",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              )),
                          SizedBox(width: 3.w),
                          SvgPicture.asset(
                            'assets/svg/Dark.svg',
                            height: 90.h,
                          ),
                          SizedBox(width: 3.w),
                          Container(
                              height: 80.h,
                              width: 75.w,
                              // color: green,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 173, 36, 27),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        )),
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Running\n09KD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: black),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Buy",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              )),
                          SizedBox(width: 3.w),
                          SvgPicture.asset(
                            'assets/svg/Dark.svg',
                            height: 90.h,
                            // color: black,
                          ),
                          SizedBox(width: 3.w),
                          Container(
                            height: 80.h,
                            width: 75.w,
                            // color: green,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 132, 160, 174),

                                      // color: white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      )),
                                  height: 14.h,
                                  width: 14.w,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Gym\n14KD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Buy",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Container(
                        height: 35.h,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '41KD',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Savings',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/svg/Group 1000001088 (1).svg'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                                'assets/svg/Group 1000001087 (1).svg'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                                'assets/svg/Group 1000001086 (1).svg'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                                'assets/svg/Group 1000001085 (1).svg')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
