import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/screens/login/login.dart';
import 'package:mbayat/screens/main/home.dart';
import 'package:mbayat/screens/pages/contact_us.dart';
import 'package:mbayat/screens/pages/current_order.dart';
import 'package:mbayat/screens/pages/wishlist.dart';

class ListItem {
  final String iconPath;
  final String label;
  final GestureTapCallback? onTap;

  ListItem({required this.iconPath, required this.label, this.onTap});
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  var recentlysong = [];

  @override
  void initState() {
    selectedItemIndex = -1;
    items = [
      ListItem(
        iconPath: 'assets/svg/cart.svg',
        label: 'My Orders',
        onTap: () {
          navigate(CurrentOrderScreen());
        },
      ),
      ListItem(
        iconPath: 'assets/svg/heart.svg',
        label: 'Whishlist',
        onTap: () {
          navigate(WishlistPage());
        },
      ),
      ListItem(
          iconPath: 'assets/svg/contact_us.svg',
          label: 'Contact Us',
          onTap: () {
            navigate(ContactUsPage());
          }),
      ListItem(
          iconPath: 'assets/svg/about_us.svg', label: 'About us', onTap: () {}),
      ListItem(
          iconPath: 'assets/svg/policy.svg',
          label: 'Privacy & Policy',
          onTap: () {}),
      ListItem(
          iconPath: 'assets/svg/conditions.svg',
          label: 'Terms & Conditions',
          onTap: () {}),
      ListItem(iconPath: 'assets/svg/faq.svg', label: 'FAQ', onTap: () {}),
    ];
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late int selectedItemIndex;
  bool click = true;

  late final List<ListItem> items;

  void navigate(directingScreen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => directingScreen,
      ),
    );
  }

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
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
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
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 0),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/icon.png',
                height: 40,
                width: 40,
              ),
            ],
          ),
        ),
        title: Text(
          "Yousef Saleh",
          style: TextStyle(
            color: white,
            fontFamily: 'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: eMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                items.length,
                (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItemIndex = index;
                      });

                      items[index].onTap!();
                    },
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      decoration: BoxDecoration(
                          color: selectedItemIndex == index
                              ? green
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            if (selectedItemIndex == index)
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                          ]),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            items[index].iconPath,
                            height: 23,
                            width: 23,
                            color: selectedItemIndex == index ? white : black,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            items[index].label,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: selectedItemIndex == index ? white : black,
                              fontFamily: 'Urbanist',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 150.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "AR",
                      style: TextStyle(
                        color: Color(0xff241332),
                        fontSize: 20,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset('assets/icons/ar.png'),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      child: SvgPicture.asset((click == true)
                          ? 'assets/svg/on.svg'
                          : 'assets/svg/off.svg'),
                    ),
                    Image.asset('assets/icons/en.png'),
                    Text(
                      "EN",
                      style: TextStyle(
                        color: Color(0xff241332),
                        fontSize: 20,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         click = !click;
            //       });
            //     },
            //     child: SvgPicture.asset((click == true)
            //         ? 'assets/svg/language_english.png'
            //         : 'assets/icons/language_arabic.png'),
            //   ),
            // ),
            Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset('assets/svg/logout.svg'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Log Out',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: green,
                          fontFamily: 'Urbanist',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
