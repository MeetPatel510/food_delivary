import 'package:flutter/material.dart';
import 'package:food_delivary/food_try/model/food_model.dart';

class FoodImg extends StatefulWidget {
  final Food? food;

  FoodImg({this.food});

  @override
  State<FoodImg> createState() => _FoodImgState();
}

class _FoodImgState extends State<FoodImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Color(
                      0xFFF5F5F5,
                    ),
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              width: 220,
              height: 220,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.2),
                  offset: Offset(-1, 10),
                  blurRadius: 10,
                )
              ]),
              child: Image.network(
                widget.food!.image,
                fit: BoxFit.cover,
                height: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
