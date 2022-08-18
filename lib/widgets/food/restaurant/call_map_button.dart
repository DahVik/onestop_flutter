import 'package:flutter/material.dart';
import 'package:onestop_dev/globals/my_colors.dart';
import 'package:onestop_dev/globals/my_fonts.dart';

class Call_MapButton extends StatelessWidget {
  const Call_MapButton(
      {Key? key,
      required this.Call_Map,
      required this.icon,
      required this.callback,
      this.fontSize = 11})
      : super(key: key);

  final String Call_Map;
  final IconData icon;
  final VoidCallback callback;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            color: kGrey9,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: fontSize,
                  color: kWhite,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  Call_Map,
                  style: MyFonts.w500.size(fontSize).setColor(kWhite),
                ),
              ],
            ),
          )),
    );
  }
}

