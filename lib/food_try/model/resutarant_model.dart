
import 'package:food_delivary/food_try/model/food_model.dart';



class Restaurant {
  String name;
  String distance;
  Map<String, List<Food>> menu;
  Restaurant({
    required this.name,
    required this.distance,
    required this.menu,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
        name: 'Find',
        distance: '2.4km>',
        menu: {
          // 'Recommend': Food.generateRecommendFoods(),
          // 'Popular': Food.generatePopularFood()!,
          'Recommend': [],
          'Popular': [],
          'Noodles': [],
          'Pizza': [],
        });
  }
}
