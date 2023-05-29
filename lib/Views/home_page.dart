import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_app/Models/sneakers_model.dart';
import 'package:shoes_app/Styles/colors_app.dart';

import '../Models/list_categories.dart';
import '../Styles/constants.dart';
import '../Widgets/adresse_row.dart';
import '../Widgets/custom_nav_bar.dart';
import '../Widgets/new_card.dart';
import '../Widgets/search_field.dart';
import 'details.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Sneaker> sneakers = Sneaker.sneakers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, 0),
          child: Column(
            children: [
              NavBar(
                  ficon: 'assets/svg/burgermenu-com.svg',
                  sicon: 'assets/svg/cart.svg',
                  text: 'Shop Name'),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const SearchField(),
                      const SizedBox(
                        height: 8,
                      ),
                      const AdresseRow(),
                      BrandsLogos(),
                      const SizedBox(
                        height: 8,
                      ),
                      const NewCard(),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Text(
                            'New arrival',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            'See all',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: buttonColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: sneakers.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(sneaker: sneakers[index]),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: textColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: textColor.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                        sneakers[index].image![0],
                                        height: 100,
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Text(
                                      sneakers[index].name!.toUpperCase(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Text(
                                      '\$ ${sneakers[index].price.toString()}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
