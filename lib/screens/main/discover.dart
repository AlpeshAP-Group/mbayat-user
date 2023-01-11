import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/components/data.dart';
import 'package:mbayat/screens/main/drawer.dart';
import 'package:mbayat/screens/pages/box_history.dart';
import 'package:mbayat/screens/pages/monthly_savings.dart';
import 'package:mbayat/screens/pages/notification.dart';
import 'package:mbayat/screens/pages/subscription.dart';
import 'package:table_calendar/table_calendar.dart';

class SavingsData {
  final String month;
  final String amound;

  SavingsData(this.month, this.amound);
}

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  var recentlysong = [];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<BoxData> data = [
    BoxData(date: DateTime(2022, 01, 10), imageUrl: ""),
    BoxData(date: DateTime(2022, 02, 10), imageUrl: ""),
    BoxData(date: DateTime(2022, 03, 10), imageUrl: ""),
    BoxData(date: DateTime(2022, 01, 20), imageUrl: ""),
  ];
  final List<SavingsData> savingsData = [
    SavingsData("January", "25 KD"),
    SavingsData("February", "56 KD"),
    SavingsData("March", "30 KD"),
  ];
  int currentindex = 2;
  final PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: bgColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        )),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 20),
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
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
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
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerScreen()));
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
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
                      'assets/svg/meanu.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
              child: Text(
            "Hi Yousef!",
            style: TextStyle(
              color: white,
              fontFamily: 'Urbanist',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
      body: Padding(
        padding: cMargin,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0x19000000),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Months",
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "02",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Next Box",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 1,
                          color: black,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          height: 22,
                          width: 1,
                          color: black,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Active Subscription",
                          style: TextStyle(
                            color: Color(0xff383838),
                            fontSize: 15,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "24.March -- 31.May",
                          style: TextStyle(
                            color: Color(0xff383838),
                            fontSize: 14,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "12 Days",
                          style: TextStyle(
                            color: Color(0xff383838),
                            fontSize: 16,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubscriptionPage()));
                          },
                          child: Container(
                            width: 65.w,
                            height: 21.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0x19000000),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xff6fc7b7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: SvgPicture.asset('assets/svg/add.svg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  DateTime today = DateTime.now();
                                  void _onSelected(
                                      DateTime day, DateTime focusedDay) {
                                    setState(() {
                                      today = day;
                                    });
                                  }

                                  return StatefulBuilder(
                                      builder: (context, setState) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.0))),
                                      contentPadding: EdgeInsets.only(top: 8.0),
                                      content: Container(
                                        width: 290.w,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              TableCalendar(
                                                calendarFormat:
                                                    CalendarFormat.month,
                                                availableGestures:
                                                    AvailableGestures.all,
                                                onDaySelected: _onSelected,
                                                selectedDayPredicate: (day) =>
                                                    isSameDay(day, today),
                                                focusedDay: today,
                                                firstDay:
                                                    DateTime.utc(2000, 01, 01),
                                                lastDay:
                                                    DateTime.utc(2030, 01, 01),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                                });
                          },
                          child: Container(
                            width: 65.w,
                            height: 21.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0x19000000),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xffb12b52),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: SvgPicture.asset('assets/svg/pause.svg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>()));
              },
              child: Container(
                height: 33.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Box History',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Urbanist',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Last Recevied",
                      // data[currentindex].date.month == DateTime(2022, 03).month
                      //     ? 'Last Recevied'
                      //     : "Month",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Urbanist',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 25,
                      width: 2.5,
                      color: white,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      DateFormat("dd MMM ").format(data[currentindex].date),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Urbanist',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              child: PageView.builder(
                  itemCount: data.length,
                  controller: page,
                  onPageChanged: ((value) {
                    setState(() {
                      currentindex = value;
                    });
                  }),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if ((currentindex + 1) == data.length) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage("assets/img/m2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BoxHistoryPage()));
                            },
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                height: 40.h,
                                width: 120.w,
                                child: Center(
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                      color: black,
                                      fontFamily: 'Urbanist',
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BoxHistoryPage()));
                        },
                        child: Image.asset(
                          'assets/img/m3.png',
                        ),
                      );
                    }
                  }),
            ),
            Container(
              width: double.infinity,
              height: 33.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (currentindex > 0) {
                        setState(() {
                          currentindex = currentindex - 1;
                        });

                        page.animateToPage(currentindex,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      }
                    },
                    icon: Icon(Icons.chevron_left_outlined),
                  ),
                  if ((currentindex + 1) != data.length)
                    Text(DateFormat("MMMM yyyy")
                        .format(data[currentindex].date)),
                  if ((currentindex + 1) == (data.length))
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BoxHistoryPage()));
                        },
                        child: Container(child: Text("View All"))),
                  IconButton(
                      onPressed: () {
                        if ((currentindex + 1) != data.length) {
                          setState(() {
                            currentindex = currentindex + 1;
                          });
                          page.animateToPage(currentindex,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                        }
                      },
                      icon: Icon(Icons.chevron_right_outlined))
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Your Savings!",
                  style: TextStyle(
                    color: black,
                    fontSize: 14,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Carousel(
                height: 149,
                width: 250.w,
                initialPage: 1,
                showIndicator: false,
                allowWrap: false,
                type: Types.slideSwiper,
                onCarouselTap: (i) {},
                indicatorType: IndicatorTypes.bar,
                arrowColor: black,
                axis: Axis.horizontal,
                showArrow: false,
                children: List.generate(
                  3,
                  (i) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MonthlySavingsPage()));
                    },
                    child: Container(
                      constraints:
                          BoxConstraints(minHeight: 149.h, minWidth: 150.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 8, right: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              savingsData[i].month,
                              style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4.33),
                            Text(
                              savingsData[i].amound,
                              style: TextStyle(
                                color: black,
                                fontSize: 20.sp,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4.33),
                            Text(
                              "Savings",
                              style: TextStyle(
                                color: black,
                                fontSize: 12.sp,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                SizedBox(
                                  width: 50.w,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/graph.svg',
                                  height: 50.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
