//
// import 'package:flutter/material.dart';
//
// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});
//
//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//   var size = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.green,
//         leading: Icon(Icons.keyboard_arrow_left, size: 40),
//         title: Stack(
//           children: <Widget>[
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 15,
//                       height: 4,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white),
//                     ),
//                     SizedBox(width: 15),
//                     Container(
//                       width: 5,
//                       height: 4,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white),
//                     ),
//                     SizedBox(width: 15),
//                     Container(
//                       width: 5,
//                       height: 4,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//         actions: [
//           Icon(Icons.favorite_border),
//           Padding(padding: EdgeInsets.all(4))
//         ],
//       ),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height: 300,
//                     color: Color(0xFF7CD965),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     left: 0,
//                     child: Container(
//                       width: double.infinity,
//                       height: 30,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(30))),
//                     ),
//                   )
//                 ],
//               ),
//               Expanded(
//                 child: Stack(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           width: double.infinity,
//                           height: 460,
//                           padding: EdgeInsets.only(top: 155, left: 20),
//                           child: Text(
//                             "Avocada Salad",
//                             style: TextStyle(
//                                 fontSize: 35, fontWeight: FontWeight.w500),
//                           ),
//                           decoration: BoxDecoration(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(right: 70, top: 200),
//                           child: Text.rich(
//                             TextSpan(
//                               text:
//                               "Fresh Avocado,shrimps salad with lettuce green mix,\ncherry tomatoes,herbs and olive oil,lemon dressing.\nhealthy food....",
//                               style: TextStyle(color: Colors.grey),
//                               children: [
//                                 TextSpan(
//                                   text: "Read More",
//                                   style: TextStyle(
//                                       color: Color(0xFFA4E593),
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding:
//                                   const EdgeInsets.only(top: 10, left: 10),
//                                   child: Icon(Icons.star,
//                                       color: Colors.orangeAccent),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 10),
//                                   child: Text("\t4.5",
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500)),
//                                 ),
//                                 Padding(
//                                     padding: EdgeInsets.only(top: 10, left: 75),
//                                     child: Icon(
//                                         Icons.local_fire_department_sharp,
//                                         color: Colors.orange)),
//                                 Padding(
//                                   padding:
//                                   const EdgeInsets.only(top: 10, left: 5),
//                                   child: Text(
//                                     "\t100 Kcal",
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 10, left: 75),
//                                   child: Icon(Icons.alarm, color: Colors.red),
//                                 ),
//                                 Padding(
//                                   padding:
//                                   const EdgeInsets.only(top: 10, left: 5),
//                                   child: Text("5-10 Min",
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500)),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 280, top: 10),
//                           child: Text(
//                             "Ingradients",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.w700),
//                           ),
//                         )
//                       ],
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 80, left: 160),
//                       width: 120,
//                       height: 50,
//                       child: Center(
//                         child: Expanded(
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: InkWell(
//                                     onTap: () {
//                                       setState(() {
//                                         if (size > 0) {
//                                           size = size - 1;
//                                         }
//                                         print(size);
//                                       });
//                                     },
//                                     child: Icon(Icons.remove,
//                                         color: Colors.white, size: 28)),
//                               ),
//                               Expanded(
//                                 child: Row(
//                                   children: [
//                                     Text(
//                                       "\t$size",
//                                       style: TextStyle(
//                                           fontSize: 30, color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: InkWell(onTap: (){
//                                       setState(() {
//                                         size=size+1;
//                                         print(size);
//                                       });
//                                     },
//                                       child: Icon(
//                                         Icons.add,
//                                         color: Colors.white,
//                                         size: 28,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(50)),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 625, left: 10),
//             child: Row(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, left: 30),
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset("images/k1.jpg", fit: BoxFit.cover),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey[300]),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, left: 30),
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset("images/k2.jpg", fit: BoxFit.cover),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey[300]),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, left: 30),
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset("images/k3.jpg", fit: BoxFit.cover),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey[300]),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, left: 30),
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset("images/k4.jpg", fit: BoxFit.cover),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey[300]),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, left: 30),
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset("images/k5.jpg", fit: BoxFit.cover),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey[300]),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: InkWell(onTap:(){},hoverColor:Colors.red,
//                       child: Container(
//                         width: 416,
//                         height: 50,
//                         child: Center(
//                           child: Text(
//                             "Add To Cart",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 25,
//                                 color: Colors.white),
//                           ),
//                         ),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.green),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//           Positioned(
//             top: 125,
//             left: 0,
//             right: 0,
//             child: Container(
//                 height: 234,
//                 width: 234,
//                 child: Image.asset("assets/ingre3.png", fit: BoxFit.cover),
//                 decoration: BoxDecoration(
//                     color: Color(0xD6DAE2FF),
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                           spreadRadius: 10,
//                           color: Color(0xFF7CD965),
//                           blurRadius: 10)
//                     ])),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:food_delivary/food_try/model/food_model.dart';
import 'package:food_delivary/food_try/widgets/food_details_img.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import '../widgets/food_detailspage_details.dart';

class DetailPage extends StatefulWidget {
  final Food food;

  const DetailPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Food get food => widget.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back_ios_new)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.green[300],
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          child: Column(
            children: [
              FoodImg(
                food: widget.food,
              ),
              FoodDetail(
                food: widget.food,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          onPressed:addItemToCard,
          label: const Text('Add To Cart'),
          icon: const Icon(Icons.shopping_cart_sharp),

        ),
      ),
    );
  }
  addItemToCard() {
    final snackBar = SnackBar(
      content: Text('${food.name} added to cart'),
      duration: const Duration(seconds: 4),
    );
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    CartModel cartModel = CartModel(food: food, quantity: 1);
    Provider.of<Cart>(context,listen: false).addItem(cartModel);
  }

}
