import 'package:flutter/widgets.dart';

GlobalKey<FormState> loginkey = GlobalKey<FormState>();
GlobalKey<FormState> signupkey = GlobalKey<FormState>();
GlobalKey<FormState> forgotkey = GlobalKey<FormState>();
GlobalKey<FormState> passwordkey = GlobalKey<FormState>();
GlobalKey<FormState> akey = GlobalKey<FormState>();
GlobalKey<FormState> bkey = GlobalKey<FormState>();
GlobalKey<FormState> ckey = GlobalKey<FormState>();

class BoxData {
  final DateTime date;
  final String imageUrl;

  BoxData({required this.date, required this.imageUrl});
}


class BoxHistoryContent {
  String image;
  String date;

  BoxHistoryContent({required this.image, required this.date});
}

List<BoxHistoryContent> box = [
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: '20.Jan.2022',
  ),
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: 'December.2021',
  ),
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: 'November.2021',
  ),
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: 'October.2021',
  ),
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: 'September.2021',
  ),
  BoxHistoryContent(
    image: 'assets/img/m1.png',
    date: 'July.2021',
  ),
];