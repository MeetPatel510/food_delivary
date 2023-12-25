
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivary/food_try/constants/colors.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';
import '../model/food_model.dart';
import 'home_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  var titleStyle = const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

  List<Food> displayList = [];

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    displayList.clear();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black),
        ),
        title: const Center(
            child: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close,color: Colors.black)))
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),

              TextButton(
                child: Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: const Center(
                        child: Text(
                      '+ Add to order',
                      style: TextStyle(color: Colors.white),
                    ))),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const SizedBox(height: 10,),
              ListView.builder(
                itemCount: cart.cartItems.length,
                shrinkWrap: true,
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.white,),

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: buildCartItemList(cart, cart.cartItems[index]),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              buildPriceInfo(cart),
              const SizedBox(
                height: 10,
              ),
              checkoutButton(cart, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPriceInfo(Cart cart) {
    const titleStyle2 = TextStyle(fontSize: 18, color: Colors.black45);
    double subtotal = 0;
    double total =0;
    for (CartModel cart in cart.cartItems) {
      subtotal += cart.food.price * cart.quantity ;
    }
    total=3.50+subtotal;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Subtotal:', style: titleStyle2),
                  Text('\$ ${subtotal.toStringAsFixed(2)}', style: titleStyle),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivery:', style: titleStyle2),
                  Text("\$ 3.5",style: titleStyle,),
                ],
              ),
            ),

            //Text('\$ ${total.toStringAsFixed(2)}', style: titleStyle),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total:', style: titleStyle2),
                  Text('\$ ${total.toStringAsFixed(2)}', style: titleStyle),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget checkoutButton(cart, context) {
    const titleStyle1 = TextStyle(fontSize: 16);
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 64),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text('Checkout', style: titleStyle1),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
            Fluttertoast.showToast(
                msg: "Your Order Succfull",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
          //padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
          //color: mainColor,
          //shape: StadiumBorder(),
        ),
      ),
    );
  }

  Widget buildCartItemList(Cart cart, CartModel cartModel) {
    var titleStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
           // margin: EdgeInsets.all(0),
            height: 200,
            width: 200,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.2),
                offset: const Offset(-1, 8),
                blurRadius: 10,
              )
            ]),
            child: Image.network(cartModel.food.image),
          ),
        ),
        Flexible(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Text(
                  cartModel.food.name,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () => cart.removeItem(cartModel),
                    child: const Icon(Icons.remove_circle),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('${cartModel.quantity}', style: titleStyle),
                  ),
                  InkWell(
                    onTap: () => cart.increaseItem(cartModel),
                    child: const Icon(Icons.add_circle),
                  ),
                ],
              )
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 40,
                width: 70,
                child: Text(
                  '\$ ${cartModel.food.price}',
                  style: titleStyle,
                  textAlign: TextAlign.end,
                ),
              ),
              Card(
                shape: roundedRectangle,
                color: mainColor,
                child: InkWell(
                  onTap: () => cart.removeAllInList(cartModel.food),
                  customBorder: roundedRectangle,
                  child: const Icon(Icons.close),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
