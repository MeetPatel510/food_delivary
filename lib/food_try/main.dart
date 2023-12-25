import 'package:flutter/material.dart';
import 'package:food_delivary/food_try/pages/splash_screen.dart';
import 'package:provider/provider.dart';

import 'model/cart_model.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     // builder: (context) => Cart(),
      create: (BuildContext context) {
        return Cart();
      },
      child: MaterialApp(
        title: 'Flutter Food Ordering',
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnboardScreen(),
      ),
    );
  }
}
