import 'package:flutter/material.dart';

import '../Styles/colors_app.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/4.png',
            height: 100,
          ),
          Spacer(),
          Column(
            children: [
              Text(
                'Year-End Sale',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              Text(
                'Up to 90%',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: textColor),
              ),
              SizedBox(
                height: 5,
              ),
              Chip(
                label: Text(
                  'Shop Now',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: buttonColor,
                shadowColor: buttonColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
