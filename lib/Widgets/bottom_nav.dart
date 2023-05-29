import 'package:flutter/material.dart';

import 'package:shoes_app/Styles/colors_app.dart';
import 'package:shoes_app/Views/favorite.dart';
import 'package:shoes_app/Views/search.dart';
import 'package:shoes_app/Views/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Views/home_page.dart';

class CostumNavigationBar extends StatefulWidget {
  CostumNavigationBar({
    super.key,
  });

  @override
  State<CostumNavigationBar> createState() => _CostumNavigationBarState();
}

int _index = 0;

class _CostumNavigationBarState extends State<CostumNavigationBar> {
  List<Widget> myWidgets = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    UserPage(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
      ),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border_outlined,
      ),
      label: 'Favorite',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle_rounded,
      ),
      label: 'Me',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
              backgroundColor: buttonColor,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.6),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w500),
              currentIndex: _index,
              onTap: (value) {
                setState(() {
                  _index = value;
                });
              },
              items: List.generate(items.length, (index) => items[index])),
        ),
      ),
      body: myWidgets[_index],
    );
  }
}
