// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_app/Reusable%20Card.dart';
import 'package:coffee_app/description_page.dart';

import 'package:flutter/material.dart';
import 'constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  String userName = 'Disha Patani';
  String userImage = 'lib/assets/disha.jpg'; 

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, children: [
          //-----------------appBar Row -----------------

          Row(
            // appBar App logo
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'lib/assets/Coffee app.png',
                height: 80.0,
                width: 120.0,
              ),
              IconButton(
                  onPressed: () {
                    //open Menu bar on pressed
                  },
                  icon: const Icon(
                    // appBar MenuBar Icon
                    Icons.menu,
                    color: kPrimaryColor,
                    size: 40.0,
                  ))
            ],
          ),

          // ----------------Greeting Row ----------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  // ----------------Greeting Text--------------------------
                  Text(
                    'Hello, $userName',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  kheight,
                  // -------------------Greeting Text Sub Header -------------
                  Text(
                    'Let\'s Find the Best Coffee \nFor You',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              //----------------User Icon --------------------
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.transparent,
                foregroundImage: AssetImage(userImage),
              ),
            ],
          ),
          //-------------------Greeting Row Ends Here--------------------
          kheight,
          // ---------------------Search Bar ----------------------------
          TextField(
            style: TextStyle(color: kPrimaryColor),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: kPrimaryColor,
                onPressed: () {
                  //Search Button function on pressed
                },
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kActiveColor),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              hintText: 'Find your Coffee...',
              hintStyle: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
          //---------------------tab bar -----------------------

          TabBar(
              controller: tabController,
              isScrollable: true,
              labelColor: kActiveColor,
              indicator: CircleTabIndicator(color: kActiveColor, radius: 4.0),
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              unselectedLabelColor: kPrimaryColor,
              unselectedLabelStyle: TextStyle(fontSize: 14.0),
              tabs: [
                Tab(text: 'Cappuccino'),
                Tab(text: 'Americano'),
                Tab(text: 'Espresso'),
                Tab(text: 'Mocha'),
                Tab(text: 'Latte'),
                Tab(text: 'Falt White'),
                Tab(text: 'Macchiato'),
                Tab(text: 'Doppio'),
              ]),
          //-------------------- Reusable Coffee Card---------------
          kheight,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Coffeecard(
                        heading: 'Cappuccino',
                        subheading: 'with Oat Milk',
                        rating: 4.5,
                        amount: 4.20,
                        image: 'lib/assets/cappuccino on wood .png',
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Description()));
                          });
                        },    ),
                    kwidth,
                    Coffeecard(
                        heading: 'Cappuccino',
                        subheading: 'with Chocolate',
                        rating: 4.2,
                        amount: 3.14,
                        image: 'lib/assets/Cappuccino choco.jpg',
                        onTap : (){},),
                    kwidth,
                    Coffeecard(
                        heading: 'Cappuccino',
                        subheading: 'with Oat Milk',
                        rating: 4.5,
                        amount: 4.20,
                        image: 'lib/assets/cappuccino on wood .png',
                        onTap: (){}, ),
                    kwidth,
                    Coffeecard(
                        heading: 'Cappuccino',
                        subheading: 'with Chocolate',
                        rating: 4.2,
                        amount: 3.14,
                        image: 'lib/assets/Cappuccino choco.jpg',
                        onTap: (){}, ),
                  ],
                )),
          ),
          Text(
            'Special for You',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),

          kheight,
          SpecialU(blogImage: 'lib/assets/cappuccino on wood .png', blogHeading:'5 Coffee Beans You Must Try!'),
          kheight,
          SpecialU(blogImage: 'lib/assets/Cappuccino choco.jpg', blogHeading: 'Amazing Health Benefits of Drinking Coffee!')
        ]
        

        );
  }
}

//---------------------Tab bar Circle Indicator -----------------
class CircleTabIndicator extends Decoration {
  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  final BoxPainter _painter;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  final Paint _paint;
  final double radius;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset circleOffset = offset +
        Offset(
            configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
