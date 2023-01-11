import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mbayat/screens/onBoarding/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'ar']);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (
        context,
        child,
      ) {
        return LocaleBuilder(
            builder: (locale) => MaterialApp(
                  localizationsDelegates: Locales.delegates,
                  supportedLocales: Locales.supportedLocales,
                  locale: locale,
                  debugShowCheckedModeBanner: false,
                  title: 'MBAYAT',
                  // You can use the library anywhere in the app even in theme
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    textTheme:
                        Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
                  ),
                  // supportedLocales: L10n.all,
                  home: SplashScreen(),
                  //home: Home(),
                ));
      },
    );
  }
}
