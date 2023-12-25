import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../model/cart_model.dart';
import '../model/food_model.dart';

class FoodCard extends StatefulWidget {
  final Food food;
  FoodCard(this.food);

  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  Food get food => widget.food;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],),
      child: Column(
        children: [
          SizedBox(height: 20,),
          buildImage(),
          buildTitle(),
          buildRating(),
          buildPriceInfo(),
        ],
      ),
    );
  }

  Widget buildImage() {

    return Container(

      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(50)
      ),
      //shape: roundedRectangle,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.network(
          food.image,
          fit: BoxFit.fill,
          height: 100,
            loadingBuilder:(context, child, loadingProgress) {
              if (loadingProgress != null) {
                print(loadingProgress.cumulativeBytesLoaded);
                return CircularProgressIndicator(
                  color: Colors.green,
                    value: loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!);
              }
              return child;
            }
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      color: Colors.transparent,
      height: 60,
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 16),
      child: Text(
        food.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget buildRating() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 4, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RatingBar.builder(
            initialRating: food.rate,
            direction: Axis.horizontal,
            itemCount: 5,
            itemSize: 14,
            unratedColor: Colors.black,
            itemPadding: EdgeInsets.only(right: 4.0),
            ignoreGestures: true,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: mainColor,
            ),
            onRatingUpdate: (rating) {},
          ),
          Text('(${food.time})'),
        ],
      ),
    );
  }

  Widget buildPriceInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '\$ ${food.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Card(
            margin: EdgeInsets.only(right: 8),
            shape: roundedRectangle,
            color: mainColor,
            child: InkWell(
              onTap: addItemToCard,
              customBorder: roundedRectangle,
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }

  addItemToCard() {
    final snackBar = SnackBar(
      content: Text('${food.name} added to cart'),
      duration: Duration(seconds: 4),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    CartModel cartModel = CartModel(food: food, quantity: 1);
    Provider.of<Cart>(context,listen: false).addItem(cartModel);
  }
}
