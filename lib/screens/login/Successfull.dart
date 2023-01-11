import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mbayat/components/constants.dart';
import 'package:mbayat/components/data.dart';
import 'package:mbayat/screens/login/login.dart';

class SuccessfullScreen extends StatefulWidget {
  const SuccessfullScreen({Key? key, required this.isPassword})
      : super(key: key);
  final bool isPassword;
  @override
  State<SuccessfullScreen> createState() => _SuccessfullScreenState();
}

class _SuccessfullScreenState extends State<SuccessfullScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: bgColor,
            ),
            child: Padding(
              padding: cPaddingMargin,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: widget.isPassword,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/success.svg'),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            'Password Changed!',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: black,
                              fontFamily: 'Urbanist',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Your password has been changed successfully.',
                              softWrap: true,
                              maxLines: 3,
                              style: textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (passwordkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0x19000000),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: green,
                              ),
                              child: Center(
                                child: Text(
                                  'Back to Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Urbanist',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Visibility(
                    visible: widget.isPassword == false,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/success.svg'),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            'Registerd Successfully!',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: black,
                              fontFamily: 'Urbanist',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Your registration has been Done',
                              softWrap: true,
                              maxLines: 3,
                              style: textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (passwordkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0x19000000),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: green,
                              ),
                              child: Center(
                                child: Text(
                                  'Back to Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Urbanist',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
