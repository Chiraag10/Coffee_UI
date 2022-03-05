// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coffee_app/Reusable%20Card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  // ------------------ Heading section ---------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          // ----------------Heading Text--------------------------
                          Text(
                            'Cappuccino',
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          kheight,
                          // -------------------Heading Text Sub Header -------------
                          Text(
                            'With Oat Milk',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      //----------------Favourite Icon --------------------
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                  kheight,
                  kheight,

                  Text(
                      'A cappuccino is a coffee-based drink made primarily from espresso and milk.It consists of one-third espresso,  one-third heated milk and one-third milk foam and is generally served in a 6 to 8-ounce cup. ',
                      style: TextStyle(
                        fontSize: 18.0,
                        wordSpacing: 0.8,
                        color: Colors.white60,
                      )),
                  kheight,
                  kheight,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.solidStar,
                          size: 20.0, color: kActiveColor),
                      kwidth,
                      Text('4.5', style: kHeadingTextStyle),
                      Text(' /5', style: kSubHeadingTextStyle),
                    ],
                  ),
                  kheight,
                  kheight,
                  // ------------------ Ingredients Container -------------------------
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: kCardBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Preparation Time',
                                      style: kIngredientHeadingTextStyle),
                                  kheight,
                                  Text('5 min',
                                      style: kIngredientSubHeadingTextStyle),
                                ],
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              kheight,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ingredients',
                                      style: kIngredientHeadingTextStyle,
                                    ),
                                    kheight,
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Ingredients(
                                            color: Colors.lightBlue,
                                            icon: Icons.water_drop,
                                            name: 'Water',
                                          ),
                                          kwidth,
                                          Ingredients(
                                              color: Colors.brown,
                                              icon: Icons.coffee_sharp,
                                              name: 'Brewed \n Espresso'),
                                          kwidth,
                                          Ingredients(
                                              color: Colors.pinkAccent,
                                              icon: FontAwesomeIcons.cubes,
                                              name: 'Sugar'),
                                          kwidth,
                                          Ingredients(
                                              color: Colors.lightGreen,
                                              icon:
                                                  FontAwesomeIcons.cottonBureau,
                                              name: 'Toffee Nut \n Syrup'),
                                          kwidth,
                                          Ingredients(
                                            color: Colors.green,
                                            icon: FontAwesomeIcons.leaf,
                                            name: 'Natural \n Flavour',
                                          ),
                                          kwidth,
                                          Ingredients(
                                              color: Colors.orangeAccent,
                                              icon: FontAwesomeIcons.wineBottle,
                                              name: 'Vanilla \n Syrup'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              kheight,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nutrion Information',
                                      style: kIngredientHeadingTextStyle,
                                    ),
                                    kheight,
                                    SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Nutritions(
                                              nutritionName: 'Calories',
                                              nutritionQuantity: '350'),
                                          kheight,
                                          Nutritions(
                                              nutritionName: 'Protein',
                                              nutritionQuantity: '18g'),
                                          kheight,
                                          Nutritions(
                                              nutritionName: 'Caffine',
                                              nutritionQuantity: '180g')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Close',
                                    style: kSubHeadingTextStyle,
                                  )),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),

            //--------------------Image section of the Description Page-----------
            Positioned(
              top: 160.0,
              right: 0.0,
              child: Image.asset(
                'lib/assets/cappuccino_only.png',
                width: 220.0,
              ),
            ),
          ]),
        ),
        //---------------- Floating Action Button -------------------
        floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 15.0),
            child: Button(
                child: Text(
                  'Place Order',
                  style: kHeadingTextStyle,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Color(0xfff2f2f2),
                      isScrollControlled: true,
                      // isDismissible: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      context: context,
                      builder: (context) {
                        return FractionallySizedBox(
                            heightFactor: 0.7, child: MyBottomsheet());
                      });
                })));
  }
}

class MyBottomsheet extends StatefulWidget {
  const MyBottomsheet({Key? key}) : super(key: key);

  @override
  State<MyBottomsheet> createState() => _MyBottomsheetState();
}

class _MyBottomsheetState extends State<MyBottomsheet> {
  List<bool> isSelected = [true];
  List<bool> isWanted = [true];
  var size = ['S', 'M', 'L'];
  String sizeValue = 'M';
  int coffeeQT = 0;
  int sugar = 2;
  int icecube = 0;

  @override
  void initState() {
    isSelected = [true, false];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close_outlined,
                    size: 30.0,
                    color: kPrimaryColor,
                  ))
            ],
          ),
          //--------------- Row of Temperature and Quantity-----------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // -------------------- Temperature Column-----------------------
                Column(
                  children: [
                    Text(
                      'Temperature',
                      style: kBottomSheetHeadingTextStyle,
                    ),
                    kheight,
                    ToggleButtons(
                        borderColor: kCardBackground.withOpacity(0.3),
                        selectedBorderColor: kCardBackground.withOpacity(0.3),
                        selectedColor: Colors.white,
                        color: Colors.black,
                        fillColor: kActiveColor,
                        borderRadius: BorderRadius.circular(20.0),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Hot',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Cold',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          ),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = i == index;
                            }
                          });
                        },
                        isSelected: isSelected),
                  ],
                ),
                //--------------------- Quantity Column-------------------------
                Column(
                  children: [
                    Text(
                      'Quantity',
                      style: kBottomSheetHeadingTextStyle,
                    ),
                    kheight,
                    Row(
                      children: [
                        CounterButton(
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            onPressed: () {
                              setState(() {
                                if (coffeeQT >= 0) {
                                  coffeeQT++;
                                }
                              });
                            }),
                        kwidth,
                        Text(
                          '$coffeeQT',
                          style: kBottomSheetHeadingTextStyle,
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
                                if (coffeeQT > 0) {
                                  coffeeQT--;
                                }
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //------------------------ Select Cup And Select Size Section---------
          Padding(
            padding: const EdgeInsets.only(right: 40.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Select Size',
                  style: kBottomSheetHeadingTextStyle,
                ),
                kwidth,
                kwidth,
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0, color: kCardBackground.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(20.0),
                    underline: SizedBox(),
                    value: sizeValue,
                    items: size.map((String size) {
                      return DropdownMenuItem(
                        value: size,
                        child: Text(size),
                      );
                    }).toList(),
                    style: TextStyle(
                        color: kActiveColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                    onChanged: (String? newValue) {
                      setState(() {
                        sizeValue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          kheight,
          //-------------- sugar section----------------------------
          Container(
            decoration: BoxDecoration(
              color : Colors.tealAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30.0)
            ),
            
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                
                Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.cube,
                        size: 30.0,
                        color: Colors.transparent.withOpacity(0.5),
                      ),
                      Text(
                        'Sugar',
                        style: kIngredientSubHeadingTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CounterButton(
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          onPressed: () {
                            setState(() {
                              if (sugar >= 0) {
                                sugar++;
                              }
                            });
                          }),
                      kwidth,
                      Text(
                        '$sugar Cubes',
                        style: kBottomSheetHeadingTextStyle,
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
                              if (sugar > 0) {
                                sugar--;
                              }
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          
          kheight,
          //------------------ Ice section ------------------------------
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.cubes,
                      size: 40.0,
                      color: Colors.transparent.withOpacity(0.5),
                    ),
                    Text(
                      'Ice Cube',
                      style: kIngredientSubHeadingTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CounterButton(
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        onPressed: () {
                          setState(() {
                            if (icecube >= 0) {
                              icecube++;
                            }
                          });
                        }),
                    kwidth,
                    Text(
                      '$icecube Cubes',
                      style: kBottomSheetHeadingTextStyle,
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
                            if (icecube > 0) {
                              icecube--;
                            }
                          });
                        }),
                  ],
                ),
              ],
            ),
          ),
          kheight,
          //------------------------- Cream section ------------------------
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.iceCream,
                      size: 40.0,
                      color: Colors.transparent.withOpacity(0.5),
                    ),
                    Text(
                      'Cream',
                      style: kIngredientSubHeadingTextStyle,
                    ),
                  ],
                ),
                Cream(),
              ],
            ),
          ),

              ]
            ),),
          kheight,
          //--------------------- Total and Action Button Row-----------
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'Total',
                        style: kBottomSheetHeadingTextStyle,
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
                  Button(
                      child: Text(
                        'Place Order',
                        style: kHeadingTextStyle,
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
                      }),
                ]),
          ),
        ],
      ),
    );
  }
}

//------------------------- Toggle Button for Cream-----------------------
class Cream extends StatefulWidget {
  const Cream({Key? key}) : super(key: key);

  @override
  State<Cream> createState() => _CreamState();
}

class _CreamState extends State<Cream> {
  List<bool> isWanted = [true];
  @override
  void initState() {
    isWanted = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        constraints: BoxConstraints(
          minWidth: 90.0,
        ),
        borderColor: kCardBackground.withOpacity(0.3),
        selectedBorderColor: kCardBackground.withOpacity(0.3),
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: kActiveColor,
        borderRadius: BorderRadius.circular(20.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Yes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'No',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
        ],
        onPressed: (int _index) {
          setState(() {
            for (int j = 0; j < isWanted.length; j++) {
              isWanted[j] = j == _index;
            }
          });
        },
        isSelected: isWanted);
  }
}
