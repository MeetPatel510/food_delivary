import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivary/food_try/model/food_model.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';

class FoodQuantity extends StatelessWidget {
  final Food? food;

  const FoodQuantity({
    Key? key,
    this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height:40,
        child: Stack(
          children: [
            // Container(
            //   height: double.maxFinite,
            //   width: 120,
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Text(
            //         '\$',
            //         style:
            //             TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            //       ),
            //       Text(
            //         food!.price!.toString(),
            //         style:
            //             TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   ),
            // ),
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Container(
            //     height: double.maxFinite,
            //     width: 150,
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     child: Consumer<Cart>(
            //       builder: (context, value, child) {
            //         return Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Text(
            //               '-',
            //               style: TextStyle(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.white),
            //             ),
            //             Text(
            //               food!.quantity!.toString(),
            //               style: TextStyle(color: Colors.white),
            //             ),
            //             InkWell(
            //               onTap: () {
            //                // value.increaseItem()
            //               },
            //               child: Text(
            //                 '+',
            //                 style: TextStyle(
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white),
            //               ),
            //             ),
            //           ],
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ));
  }
}
