import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/colors_app.dart';

class AdresseRow extends StatelessWidget {
  const AdresseRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svg/location.svg',
          width: 16,
          color: buttonColor,
        ),
        Text(
          ' Ship to',
          style: TextStyle(color: buttonColor),
        ),
        Text(
          ' Ain Chock,CASABLANCA',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_right_alt_rounded,
          size: 30,
        )
      ],
    );
  }
}
