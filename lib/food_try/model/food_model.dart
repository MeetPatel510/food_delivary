class Food {
  String name;
  double price;
  double rate;
  String time;
  String image;
  String foodType;
  String about;
  String cal;
  int quantity;
  List<Map<String, String>> ingredients;
  Food({required this.name, required this.price, required this.image, required this.rate, required this.time, required this.foodType,required this.about,required this.cal,required this.quantity,required this.ingredients});
}

List<String> foodTypes = [
  'Salads',
  'Hot salads',
  'Cold salads',
  'Hot sale',
  'Popularity',
  'Dessert',
];

List<Food> foods = [
  Food(
    name: 'Avocada salads',
    price: 12,
    cal: '325 Kcal',
    rate: 4.5,
    time: '15min',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
      {'Noodle': 'assets/images/ingre1.png'},
    ],
    about:
    'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',

    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Avocado Salad With Mayonoise Soy Sauce',
    price: 20,
    cal: '325 Kcal',
    rate: 2,
    time: '25min',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
      {'Noodle': 'assets/images/ingre1.png'},
    ],
    about:
    'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',

    image: 'https://ifoodreal.com/wp-content/uploads/2018/04/FG-avocado-salad.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Pancake With Orange Sauce',
    price: 30,
    rate: 3.5,
    cal: '325 Kcal',
    time: '30min',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
      {'Noodle': 'assets/images/ingre1.png'},
    ],
    about:
    'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',

    image: 'https://iowagirleats.com/wp-content/uploads/2013/01/OrangePancakes_02_mini.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Vegetables ',
    price: 40,
    rate: 4,
    cal: '325 Kcal',
    time: '45min',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
      {'Noodle': 'assets/images/ingre1.png'},
    ],
    about:
    'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',

    image: 'https://iowagirleats.com/wp-content/uploads/2016/06/Marinated-Vegetable-Salad-iowagirleats-03.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Pancake With Orange Sauce',
    price: 30,
    rate: 3.5,
    cal: '325 Kcal',
    time: '30min',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
      {'Noodle': 'assets/images/ingre1.png'},
    ],
    about:
    'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',

    image: 'https://iowagirleats.com/wp-content/uploads/2013/01/OrangePancakes_02_mini.jpg',
    foodType: foodTypes[0],
  ),
];
