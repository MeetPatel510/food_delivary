import 'package:flutter/material.dart';
import 'package:food_delivary/food_try/constants/colors.dart';
import 'package:food_delivary/food_try/model/cart_model.dart';
import 'package:food_delivary/food_try/model/resutarant_model.dart';
import 'package:food_delivary/food_try/widgets/food_list.dart';
import 'package:provider/provider.dart';
import '../model/food_model.dart';
import '../widgets/cart_bottom_sheet.dart';
import '../widgets/food_card.dart';
import 'about_page.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int value = 0;
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();


  showCart() {
    showModalBottomSheet(
      shape: roundedRectangle32,
      context: context,
      builder: (context) => CartBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(),
            Container(
              padding: EdgeInsets.all(5),
              child: Text.rich(
                TextSpan(
                  text: " Find The",
                  style: TextStyle(fontSize: 35),
                  children: [
                    TextSpan(
                      text: " Best\n Food",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    TextSpan(
                      text: " Around You",
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Search Your Favourit Food'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.tune_outlined),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Find',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '5km>',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            FoodList(
              selected: selected,
              restaurant: restaurant,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
            ),
            buildFoodList(),
             // SmoothPageIndicator(
             //   controller: pageController,
             //   count: restaurant.menu.length,
             //   effect: CustomizableEffect(
             //     dotDecoration: DotDecoration(
             //       width: 8,
             //       height: 8,
             //       color: Colors.grey.withOpacity(0.5),
             //       borderRadius: BorderRadius.circular(8),
             //     ),
             //     activeDotDecoration: DotDecoration(
             //       width: 10,
             //       height: 10,
             //       color: Colors.green,
             //       borderRadius: BorderRadius.circular(10),
             //       dotBorder: DotBorder(
             //         color: Colors.green,
             //         padding: 2,
             //         width: 2,
             //       ),
             //     ),
             //   ),
             //   onDotClicked: (index) => pageController.jumpToPage(index),
             // ),

          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    int items = 0;
    Provider.of<Cart>(context).cartItems.forEach((cart) {
      items += cart.quantity;
    });
    return SafeArea(
      child: Row(
        children: [
          Icon(Icons.location_on_rounded),
          Text('Habiganj City',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          //IconButton(icon: Icon(Icons.search), onPressed: () {}),
          Stack(
            children: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: showCart),
              Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: mainColor),
                  child: Text(
                    '$items',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  // Widget buildFoodFilter() {
  //   return Container(
  //     height: 50,
  //     //color: Colors.red,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       physics: BouncingScrollPhysics(),
  //       children: List.generate(foodTypes.length, (index) {
  //         return Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: ChoiceChip(
  //             selectedColor: mainColor,
  //             labelStyle: TextStyle(color: value == index ? Colors.white : Colors.black),
  //             label: Text(foodTypes[index]),
  //             selected: value == index,
  //             onSelected: (selected) {
  //               setState(() {
  //                 value = (selected ? index : null)!;
  //               });
  //             },
  //           ),
  //         );
  //       }),
  //     ),
  //   );
  // }



  // Widget buildFoodFilter() {
  //   var w = MediaQuery.sizeOf(context).width /3;
  //   return Container(
  //     height: 40,
  //     //color: Colors.red,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       //physics: BouncingScrollPhysics(),
  //       children: List.generate(foodTypes.length, (index) {
  //         return Container(
  //           constraints: BoxConstraints(minWidth: w),
  //           child: ChoiceChip(
  //             selectedColor: mainColor,
  //             labelStyle: TextStyle(
  //                 color: value == index ? Colors.white : Colors.black),
  //             label: Text(foodTypes[index]),
  //             selected: value == index,
  //             onSelected: (selected) {
  //               setState(
  //                 () {
  //                   value = (selected ? index : null)!;
  //                 },
  //               );
  //             },
  //           ),
  //         );
  //       }),
  //     ),
  //   );
  // }

  Widget buildFoodList() {
    return Expanded(
      child: GestureDetector(
        child: GridView.builder(
          itemCount: foods.length,
          //physics: BouncingScrollPhysics(),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.3 / 4.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          food: foods[index],
                        ),
                      ));
                },
                child: FoodCard(foods[index]));
          },
        ),
      ),
    );
  }
}
