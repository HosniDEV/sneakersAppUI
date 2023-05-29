import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoes_app/Models/sneakers_model.dart';

import '../Styles/colors_app.dart';
import '../Widgets/custom_nav_bar.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({
    super.key,
    required this.sneaker,
  });
  Sneaker sneaker;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

int selected = 0;
List<String> sizes = [
  '4.0',
  '4.5',
  '5.0',
  '5.5',
  '6.0',
];
int selectedColor = -1;

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.5,
                        width: width,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          widget.sneaker.image![selected],
                          scale: 1,
                        ),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        left: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_back_ios)),
                                Text(
                                  'Sneakers Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Icon(Icons.favorite_outline_outlined),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5, crossAxisSpacing: 4),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Container(
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                  color: cardColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: selected == index
                                          ? buttonColor
                                          : Colors.transparent,
                                      width: 2)),
                              child: Image.asset(
                                widget.sneaker.image![index],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.sneaker.name!.toUpperCase()}',
                            style: TextStyle(
                                color: buttonColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            '\$ ${widget.sneaker.price!.toString().toUpperCase()}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Sizes(widget: widget),
                      SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 20,
                        height: 1,
                        color: textColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizeRow(),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: sizes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5, crossAxisSpacing: 4),
                        itemBuilder: (context, index) => InkWell(
                            focusColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                selectedColor = index;
                              });
                            },
                            child: Chip(
                                backgroundColor:
                                    selectedColor == index ? buttonColor : null,
                                label: Text(
                                  sizes[index],
                                  style: TextStyle(
                                    color: selectedColor == index
                                        ? Colors.white
                                        : buttonColor,
                                  ),
                                ))),
                      ),
                      const Buttons(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeRow extends StatelessWidget {
  const SizeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Select size',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Text('Size chart',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: buttonColor))
      ],
    );
  }
}

class Sizes extends StatelessWidget {
  const Sizes({
    super.key,
    required this.widget,
  });

  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
            backgroundColor: textColor,
            label: Text(
              "5 pairs left",
              style: TextStyle(color: Colors.grey[100]),
            )),
        SizedBox(
          width: 4,
        ),
        Chip(
            backgroundColor: textColor,
            avatar: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
            label: Text(
              '\$ ${widget.sneaker.note!.toString().toUpperCase()}(69 Reviews)',
              style: TextStyle(color: Colors.grey[100]),
            )),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: buttonColor),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.message,
                color: buttonColor,
                size: 20,
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: buttonColor)),
              child: Text(
                'Add to cart',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: buttonColor, fontWeight: FontWeight.w700),
              ),
            )),
        SizedBox(
          width: 4,
        ),
        Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: buttonColor)),
              child: Text(
                'Boy Now',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}
