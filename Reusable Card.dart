// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'dart:ui';

import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

// -------------------Coffee Card Section in Home Page ---------------
class Coffeecard extends StatefulWidget {
  final String heading;
  final String subheading;
  final double rating;
  final double amount;
  final String image;
  final VoidCallback onTap;

  const Coffeecard(
      {required this.heading,
      required this.subheading,
      required this.rating,
      required this.amount,
      required this.image,
      required this.onTap});

  @override
  State<Coffeecard> createState() => _CoffeecardState();
}

class _CoffeecardState extends State<Coffeecard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: 200.0,
        color: kBackgroundColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //---------Image and Rating Section-----------------
          Stack(children: [
            Image.asset(widget.image, fit: BoxFit.cover),
            Positioned(
              top: 5,
              right: 15,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 6,
                    sigmaY: 6,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20.0,
                        color: kActiveColor,
                      ),
                      Text(
                        widget.rating.toString(),
                        style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
          kheight,
          // -----------Heading --------------
          Text(
            widget.heading,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
          // ---------------- SubHeading ---------------
          Text(
            widget.subheading,
            style: const TextStyle(
              fontSize: 15.0,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //-------------Amount Section ------------------
              Row(
                children: [
                  const Icon(Icons.currency_rupee,
                      color: kActiveColor, size: 20.0),
                  Text(widget.amount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      )),
                ],
              ),
              // ----------- Circular Add Button --------------

              GestureDetector(
                onTap: widget.onTap,
                child: const CircleAvatar(
                  backgroundColor: kActiveColor,
                  radius: 20.0,
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          kheight,
          kheight,
        ]),
      ),
    );
  }
}

// ---------------- Home Page Special for you section Card -----------------

class SpecialU extends StatelessWidget {
  const SpecialU({required this.blogImage, required this.blogHeading});

  final String blogImage;
  final String blogHeading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Card(
          elevation: 10.0,
          color: kCardBackground,
          child: Row(
            children: [
              Image.asset(
                blogImage,
                width: 120.0,
                fit: BoxFit.cover,
              ),
              kwidth,
              Expanded(
                child: Text(
                  blogHeading,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// --------------- Ingredients List ----------------

class Ingredients extends StatelessWidget {
  const Ingredients(
      {required this.color, required this.icon, required this.name});

  final Color color;
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Icon(
            icon,
            size: 20.0,
            color: Colors.white,
          ),
        ),
        kheight,
        Text(
          name,
          softWrap: true,
          textAlign: TextAlign.center,
          style: kIngredientSubHeadingTextStyle,
        ),
      ],
    );
  }
}

//---------------------Nutrition Ingredients---------------------

class Nutritions extends StatelessWidget {
  const Nutritions(
      {required this.nutritionName, required this.nutritionQuantity});

  final String nutritionName;
  final String nutritionQuantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          nutritionName,
          style: kIngredientSubHeadingTextStyle,
        ),
        kwidth,
        kwidth,
        kwidth,
        Text(
          nutritionQuantity,
          style: kIngredientHeadingTextStyle,
        )
      ],
    );
  }
}
//---------------- Custom Button For Place Order -----------------

class Button extends StatelessWidget {
  const Button({required this.child, required this.onPressed});
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: kActiveColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      constraints: BoxConstraints(
        minHeight: 80.0,
        minWidth: 125.0,
      ),
      child: child,
    );
  }
}

//-------------------Custom Button for Order Page Increase and Decrease------------------

class CounterButton extends StatelessWidget {
  const CounterButton({required this.child, required this.onPressed});
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      onHold: onPressed,
      holdTimeout: Duration(milliseconds: 200),
      // enableHapticFeedback: true,

      child: RawMaterialButton(
        onPressed: onPressed,
        fillColor: kActiveColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        constraints: BoxConstraints(
          minHeight: 40.0,
          minWidth: 40.0,
        ),
        child: child,
      ),
    );
  }
}

//-------------------------- Orders List Cards-------------------------

class OrdersU extends StatefulWidget {
  const OrdersU(
      {required this.orderImage,
      required this.orderName,
      required this.orderSubName});

  final String orderImage;
  final String orderSubName;
  final String orderName;

  @override
  State<OrdersU> createState() => _OrdersUState();
}

class _OrdersUState extends State<OrdersU> {
  int orderQtn = 2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Card(
          elevation: 10.0,
          color: kCardBackground,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              
              Image.asset(
                widget.orderImage,
                
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
              kwidth,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    kheight,
                    Text(
                      widget.orderName,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kheight,
                    Text(
                      widget.orderSubName,
                      softWrap: true,
                      style: kIngredientSubHeadingTextStyle,
                    ),
                    kheight,
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          CounterButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (orderQtn >= 0) {
                                    orderQtn++;
                                  }
                                });
                              }),
                          kwidth,
                          Text(
                            '$orderQtn',
                            style: kIngredientHeadingTextStyle,
                          ),
                          kwidth,
                          CounterButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (orderQtn > 0) {
                                    orderQtn--;
                                  }
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,right: 8.0),
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
                        size: 25.0,
                        color: kActiveColor,
                      ),
                      Text(
                        '9.50',
                        style: TextStyle(
                            color: kActiveColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0),
                      ),
                    
                    
                
                    ],
                  )
                          ],
                        ),
              ),
       
            ]),
    )));
  }
}
