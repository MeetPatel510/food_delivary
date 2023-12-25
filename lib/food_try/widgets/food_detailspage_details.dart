import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivary/food_try/model/food_model.dart';

import 'food_quantity.dart';


class FoodDetail extends StatefulWidget {
  final Food? food;
  FoodDetail({this.food});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(25),
          color: Color(0xFFF5F5F5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.food!.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                widget.food!.about,
                style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconText(
                    Icons.star_outlined,
                    Colors.amber,
                    widget.food!.rate.toString(),
                  ),

                  _buildIconText(
                    Icons.local_fire_department_outlined,
                    Colors.red,
                    widget.food!.cal,
                  ),


                  _buildIconText(
                    Icons.access_time_outlined,
                    Colors.blue,
                    widget.food!.time,
                  ),

                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  Text(
                    'Ingredienta',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset(widget.food!.ingredients[index].values.first,
                              width: 52),
                          Text(widget.food!.ingredients[index].keys.first),
                        ],
                      ),
                    ),
                    separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                    itemCount: widget.food!.ingredients.length),
              ),
            ],
          )),
    );
  }

  _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
