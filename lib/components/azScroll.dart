import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:mbayat/components/constants.dart';

class _AZitem extends ISuspensionBean {
  final String title;
  final String tag;

  _AZitem({
    required this.title,
    required this.tag,
  });

  @override
  String getSuspensionTag() => tag;
}

class AlphabetScrollPage extends StatefulWidget {
  final List<String> items;
  final ValueChanged<String> onClickedItem;

  const AlphabetScrollPage({
    Key? key,
    required this.items,
    required this.onClickedItem,
  }) : super(key: key);

  @override
  State<AlphabetScrollPage> createState() => _AlphabetScrollPageState();
}

class _AlphabetScrollPageState extends State<AlphabetScrollPage> {
  List<_AZitem> items = [];

  @override
  void initState() {
    super.initState();
    initList(widget.items);
  }

  void initList(List<String> items) {
    items
        .map((item) => _AZitem(title: item, tag: item[0].toUpperCase()))
        .toList();

    SuspensionUtil.sortListBySuspensionTag(this.items);
    SuspensionUtil.setShowSuspensionStatus(this.items);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) => AzListView(
        padding: EdgeInsets.all(16),
        data: items,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return _buildLIstItem(item);
        },
        indexBarOptions: IndexBarOptions(
          needRebuild: true,
          color: white,
          selectTextStyle: TextStyle(color: black, fontWeight: FontWeight.bold),
          selectItemDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: categoryBox,
          ),
          hapticFeedback: true,
          textStyle: TextStyle(
            fontSize: 15,
          ),
          indexHintAlignment: Alignment.centerRight,
        ),
      );

  Widget _buildLIstItem(_AZitem item) {
    final tag = item.getSuspensionTag();
    final offstage = !item.isShowSuspension;

    return Column(
      children: <Widget>[
        Offstage(offstage: offstage, child: buildHeader(tag)),
        Container(
          margin: EdgeInsets.only(right: 16),
          child: ListTile(
            title: Text(item.title),
            onTap: () => widget.onClickedItem(item.title),
          ),
        ),
      ],
    );
  }

  Widget buildHeader(String tag) => Container(
        height: 40,
        alignment: Alignment.centerLeft,
        child: Text(
          '$tag',
          softWrap: false,
          style: textTheme.headline2,
        ),
      );
}
