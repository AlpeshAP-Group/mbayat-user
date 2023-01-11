import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/screens/main/Profile.dart';
import 'package:mbayat/screens/main/discover.dart';
import 'package:mbayat/screens/main/gifts.dart';

// class Home extends StatefulWidget {
//   const Home({Key key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _selectedIndex = 0;

//   final pages = [
//     Discover(),
//     Discover(),
//     Discover(),
//     Discover(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_selectedIndex],
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 198, 0, 57),
//               Color.fromARGB(255, 82, 24, 69)
//             ],
//           ),
//         ),
//         child: BottomAppBar(
//           elevation: 0,
//           color: Colors.transparent,
//           child: SizedBox(
//             height: 56,
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: EdgeInsets.only(left: 25.0, right: 25.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconBottomBar(
//                     text: "Explore",
//                     icon: Image.asset(
//                       'assets/svg/Discoveryfill.png',
//                     ),
//                     selected: _selectedIndex == 0,
//                     onPressed: () {
//                       setState(() {
//                         _selectedIndex = 0;
//                       });
//                     },
//                   ),
//                   IconBottomBar(
//                     text: "Post",
//                     icon: Image.asset(
//                       'assets/svg/Search.png',
//                     ),
//                     selected: _selectedIndex == 1,
//                     onPressed: () {
//                       setState(() {
//                         _selectedIndex = 1;
//                       });
//                     },
//                   ),
//                   IconBottomBar(
//                     text: "Store",
//                     icon: Image.asset(
//                       'assets/svg/Heart.png',
//                     ),
//                     selected: _selectedIndex == 2,
//                     onPressed: () {
//                       setState(() {
//                         _selectedIndex = 2;
//                       });
//                     },
//                   ),
//                   IconBottomBar(
//                     text: "Events",
//                     icon: Image.asset(
//                       'assets/svg/File.png',
//                     ),
//                     selected: _selectedIndex == 3,
//                     onPressed: () {
//                       setState(() {
//                         _selectedIndex = 3;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class INFO extends StatefulWidget {
//   const INFO({Key key}) : super(key: key);

//   @override
//   State<INFO> createState() => _INFOState();
// }

// class _INFOState extends State<INFO> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 198, 0, 57),
//             Color.fromARGB(255, 82, 24, 69)
//           ],
//         ),
//       ),
//       child: BottomAppBar(
//         elevation: 0,
//         color: Colors.transparent,
//         child: SizedBox(
//           height: 56,
//           width: MediaQuery.of(context).size.width,
//           child: Padding(
//             padding: EdgeInsets.only(left: 25.0, right: 25.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconBottomBar(
//                   text: "Explore",
//                   icon: Image.asset(
//                     'assets/svg/explore.png',
//                   ),
//                   selected: _selectedIndex == 0,
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 0;
//                     });
//                   },
//                 ),
//                 IconBottomBar(
//                   text: "Post",
//                   icon: Image.asset(
//                     'assets/svg/post.png',
//                   ),
//                   selected: _selectedIndex == 1,
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 1;
//                     });
//                   },
//                 ),
//                 IconBottomBar(
//                   text: "Store",
//                   icon: Image.asset(
//                     'assets/svg/store.png',
//                   ),
//                   selected: _selectedIndex == 2,
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 2;
//                     });
//                   },
//                 ),
//                 IconBottomBar(
//                   text: "Events",
//                   icon: Image.asset(
//                     'assets/svg/event.png',
//                   ),
//                   selected: _selectedIndex == 3,
//                   onPressed: () {
//                     setState(() {
//                       _selectedIndex = 3;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IconBottomBar extends StatelessWidget {
//   final String text;
//   final Image icon;
//   final bool selected;
//   final Function() onPressed;

//   const IconBottomBar(
//       {Key key, this.text, this.icon, this.selected, this.onPressed})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         IconButton(
//           onPressed: onPressed,
//           icon: icon,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             fontFamily: 'PoppinsR',
//             fontSize: 12,
//             height: .1,
//             color: Color.fromARGB(255, 255, 181, 197),
//           ),
//         ),
//       ],
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key, this.initialIndex = 1}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
  final int initialIndex;
}

class _NavigationState extends State<Navigation> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    const ProfilePage(),
    const Discover(),
    const GiftScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const INFO(),
      body: Stack(
        children: [
          pages[currentIndex],
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: BottomNavigationBar(
                    backgroundColor: white,
                    onTap: onTap,
                    currentIndex: currentIndex,
                    selectedItemColor: Colors.black,
                    selectedLabelStyle: textTheme.caption,
                    type: BottomNavigationBarType.fixed,
                    showUnselectedLabels: true,
                    showSelectedLabels: true,
                    elevation: 0,
                    items: [
                      BottomNavigationBarItem(
                        label: "Profile",
                        activeIcon: SvgPicture.asset(
                          'assets/svg/profile.svg',
                          color: green,
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                        icon: SvgPicture.asset(
                          'assets/svg/profile.svg',
                          color: const Color.fromARGB(255, 112, 112, 112),
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: "Home",
                        activeIcon: SvgPicture.asset(
                          'assets/svg/home.svg',
                          color: green,
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                        icon: SvgPicture.asset(
                          'assets/svg/home.svg',
                          color: const Color.fromARGB(255, 112, 112, 112),
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: "Gifts",
                        activeIcon: SvgPicture.asset(
                          'assets/svg/gift.svg',
                          color: green,
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                        icon: SvgPicture.asset(
                          'assets/svg/gift.svg',
                          color: const Color.fromARGB(255, 112, 112, 112),
                          width: 22,
                          height: 22,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class INFO extends StatefulWidget {
  const INFO({Key? key}) : super(key: key);

  @override
  State<INFO> createState() => _INFOState();
}

class _INFOState extends State<INFO> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      )),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/svg/x.svg',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  width: 82,
                  height: 82,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/img/profile.png',
                        ).image,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'Ashfak Sayem',
                  style: textTheme.headline4,
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/profile.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'My Profile',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/notification.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Notification',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/location.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Shipping Address',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/like.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Wishlist',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/help.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Help',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/settings.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Settings',
                  style: textTheme.bodyText1,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svg/arrowright.svg',
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/privacy.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Privacy Policy',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/faq.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'FAQ',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/svg/logout.svg',
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Sign Out',
                  style: textTheme.bodyText1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
