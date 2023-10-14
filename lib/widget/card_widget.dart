import 'package:flutter/material.dart';

import 'package:sample_ui/model/product.dart';

class CardWidget extends StatelessWidget {
  final Product product;
  const CardWidget({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.grey.withOpacity(.4),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.network(
                            product.imageLink,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 150,
                              decoration: const BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(40)),
                              ),
                              child: const Center(
                                child: Text(
                                  "08 OCT , 4.30 AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          radius: 15,
                          child: const Icon(
                            Icons.more_horiz_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    maxLines: 2,
                    product.description,
                    // "Don't miss this 10 deciciens cake recep to make your birthday cake..",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, bottom: 10),
                  child: Text(
                    "Posted by Admin",
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    icons(Icons.link_rounded),
                    SizedBox(width: 0),
                    text("12.4K"),
                    SizedBox(width: 10),
                    icons(Icons.more_outlined),
                    SizedBox(width: 0),
                    text("324"),
                    SizedBox(width: 10),
                    icons(Icons.screen_share_outlined),
                    SizedBox(width: 0),
                    text("32"),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text text(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 15),
    );
  }

  Icon icons(IconData icon) {
    return Icon(
      icon,
      size: 30,
      color: Colors.white,
    );
  }
}
