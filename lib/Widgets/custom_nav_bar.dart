import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/colors_app.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key, this.ficon, this.sicon, this.text});
  String? ficon;
  String? sicon;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: cardColor,
          child: SvgPicture.asset(
            '$ficon',
            width: 22,
          ),
        ),
        Text(
          '$text',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        CircleAvatar(
          radius: 18,
          backgroundColor: cardColor,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(
                '$sicon',
                width: 22,
                color: iconColor,
              ),
              Positioned(
                  right: -2,
                  top: -2,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
