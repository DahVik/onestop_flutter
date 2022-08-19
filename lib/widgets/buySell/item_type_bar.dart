import 'package:flutter/cupertino.dart';

class ItemTypeBar extends StatelessWidget {
  final text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final EdgeInsets margin;
  ItemTypeBar(
      {Key? key,
        required this.text,
        required this.textStyle,
        required this.backgroundColor,
        required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}