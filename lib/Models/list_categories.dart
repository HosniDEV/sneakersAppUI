import 'package:flutter/material.dart';

import '../Styles/colors_app.dart';

class BrandsLogos extends StatefulWidget {
  BrandsLogos({
    super.key,
  });

  @override
  State<BrandsLogos> createState() => _BrandsLogosState();
}

class _BrandsLogosState extends State<BrandsLogos> {
  List<String> myCategorie = [
    'assets/images/adidas.png',
    'assets/images/nike.png',
    'assets/images/newblanace.png',
    'assets/images/puma.png',
    'assets/images/vans.png',
  ];
  int unselected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    unselected = index;
                  });
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      unselected == index ? buttonColor : textColor,
                  child: Image.asset(
                    myCategorie[index],
                    width: 45,
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: myCategorie.length),
    );
  }
}
