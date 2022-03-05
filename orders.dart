// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Reusable Card.dart';
import 'constants.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);
  final String userImage = 'lib/assets/disha.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Image.asset(
            'lib/assets/Coffee app.png',
            height: 100.0,
            width: 140.0,
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.transparent,
                foregroundImage: AssetImage(userImage),
              ),
            )
          ],
        ),
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            Column(
              children: [
                Text(
                  'Your Orders',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
                kheight,
                kheight,

                // -------------------- Orders List --------------------------------
                Expanded(
                  child: ListView(
                    children: [
                      OrdersU(
                        orderImage: 'lib/assets/cappuccino on wood .png',
                        orderName: 'Cappuccino',
                        orderSubName: 'with Oat Milk',
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 2.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Total',
                      style: kHeadingTextStyle,
                    ),
                  ),
                  kheight,
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.rupeeSign,
                        size: 30.0,
                        color: kActiveColor,
                      ),
                      Text(
                        '9.50',
                        style: TextStyle(
                            color: kActiveColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Button(
          child: Text(
            'Place Order',
            style: kIngredientHeadingTextStyle,
          ),
          onPressed: () {
            showDialog(context: context,
              builder: (context) => AlertDialog(
                backgroundColor: kCardBackground,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                title: Center(
                  child: Text(
                    'Your Order is Placed',
                    style: kHeadingTextStyle,
                  ),
                ),
                content: Icon(
                  Icons.emoji_emotions_rounded,
                  color: kActiveColor,
                  size: 130.0,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Ok',style : kIngredientHeadingTextStyle))
                ],
              ),
            );
          },
        ));
  }
}
