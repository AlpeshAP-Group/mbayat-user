import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/components/emoji.dart';
import 'package:mbayat/screens/main/home.dart';
import 'package:mbayat/screens/pages/addnew_address.dart';
import 'package:mbayat/screens/pages/addnew_card.dart';
import 'package:mbayat/screens/pages/address.dart';
import 'package:mbayat/screens/pages/cards.dart';
import 'package:mbayat/screens/pages/notification.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  var recentlysong = [];

  List<String> items = ['One Month', 'Three Month', 'Six Month', 'No Selected'];
  List<String> amound = [
    '15 KD',
    '40 KD',
    '75 KD',
    '',
  ];
  String? value;
  String? selectedValue;
  @override
  void initState() {
    super.initState();
  }

  final List<int> selectedList = [];

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
            padding: const EdgeInsets.only(right: 15, top: 15),
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
          padding: const EdgeInsets.only(left: 15, top: 15),
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
                      'assets/svg/arrow_back.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Center(
              child: Text(
            "Subscription",
            style: TextStyle(
              color: white,
              fontFamily: 'Urbanist',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: eMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Text(
                    "Interests",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "${selectedList.length}/5",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              // Emoji RECTANGLE
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: List.generate(
                  Iconclass().emotion.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedList.contains(index)) {
                          selectedList.remove(index);
                        } else {
                          if (selectedList.length < 5) {
                            if (selectedList.contains(index)) {
                              selectedList.remove(index);
                            } else {
                              selectedList.add(index);
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.07000000029802322),
                              offset: Offset(0, 0),
                              blurRadius: 40,
                            )
                          ],
                          color: selectedList.contains(index) ? green : white),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (selectedList.contains(index))
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Icon(
                                Icons.check,
                                color: white,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text(
                              Iconclass().emoji[index],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            Iconclass().emotion[index],
                            style: TextStyle(
                                fontFamily: 'TextM',
                                fontSize: 15,
                                color: selectedList.contains(index)
                                    ? white
                                    : black),
                          ),
                        ],
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
                  Text(
                    "Shipping Address",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/svg/delete.svg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                height: 85.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x4D000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 5, left: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Dereboyu Card. No. 23\n34410 - Istanbul/Turkiye",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ShippingAddressPage()));
                              },
                              child: Container(
                                width: 50.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromARGB(255, 177, 43, 82),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/edit.svg',
                                      height: 13,
                                      width: 13,
                                      color: white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 5.w, right: 5.w, top: 17.h),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddShippingAddressPage()));
                              },
                              child: SvgPicture.asset(
                                'assets/svg/new_address.svg',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/svg/current_location.svg',
                              height: 28,
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Payment",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/svg/delete.svg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                height: 80.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x4D000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/img/atm_card.png',
                          width: 150,
                          height: 90,
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AtmCardPage()));
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromARGB(255, 177, 43, 82),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/edit.svg',
                                        height: 13,
                                        width: 13,
                                        color: white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5.w, top: 40.h),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddAtmCardPage()));
                                },
                                child: SvgPicture.asset(
                                  'assets/svg/new_card.svg',
                                  height: 12,
                                  width: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              Text(
                "Months",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Container(
                  height: 40.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton<String>(
                    iconEnabledColor: white,
                    elevation: 0,
                    dropdownColor: Colors.transparent,
                    focusColor: green,
                    iconSize: 25,
                    hint: Text(
                      '    Plans',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'Urbanist',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    isExpanded: true,
                    value: value,
                    items: List.generate(items.length,
                        (index) => buildMenuItem(items[index], amound[index])),
                    onChanged: (value) => setState(() => this.value = value),
                  ),
                ),
              ),

              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: Text(
                        'Pay 15 KD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                          fontFamily: 'Urbanist',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item, String amound) =>
      DropdownMenuItem(
        value: item,
        child: Container(
          decoration: BoxDecoration(
              border: this.value != item
                  ? Border.all(
                      color: Color(0x19000000),
                      width: 1,
                    )
                  : null,
              color: this.value == item ? green : white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      item,
                      style: TextStyle(
                        color: this.value == item ? white : black,
                        fontFamily: 'Urbanist',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      amound,
                      style: TextStyle(
                        color: this.value == item ? white : black,
                        fontFamily: 'Urbanist',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
