// // To parse this JSON data, do
// //
// //     final food = foodFromJson(jsonString);
//
// // ignore_for_file: unused_import
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// Food foodFromJson(String str) => Food.fromJson(json.decode(str));
//
// String foodToJson(Food data) => json.encode(data.toJson());
//
// class Food {
//   bool status;
//   String message;
//   List<Cetogory> cetogory;
//
//   Food({
//     required this.status,
//     required this.message,
//     required this.cetogory,
//   });
//
//   Food copyWith({
//     bool? status,
//     String? message,
//     List<Cetogory>? cetogory,
//   }) =>
//       Food(
//         status: status ?? this.status,
//         message: message ?? this.message,
//         cetogory: cetogory ?? this.cetogory,
//       );
//
//   factory Food.fromJson(Map<String, dynamic> json) => Food(
//     status: json["status"],
//     message: json["message"],
//     cetogory: List<Cetogory>.from(json["cetogory"].map((x) => Cetogory.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "message": message,
//     "cetogory": List<dynamic>.from(cetogory.map((x) => x.toJson())),
//   };
// }
//
// class Cetogory {
//   String catName;
//   List<Product> product;
//
//   Cetogory({
//     required this.catName,
//     required this.product,
//   });
//
//   Cetogory copyWith({
//     String? catName,
//     List<Product>? product,
//   }) =>
//       Cetogory(
//         catName: catName ?? this.catName,
//         product: product ?? this.product,
//       );
//
//   factory Cetogory.fromJson(Map<String, dynamic> json) => Cetogory(
//     catName: json["cat_name"],
//     product: List<Product>.from(json["product"].map((x) => Product.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "cat_name": catName,
//     "product": List<dynamic>.from(product.map((x) => x.toJson())),
//   };
// }
//
// class Product {
//   String name;
//   String productTime;
//   double rating;
//   int productMaxAdd;
//   int productMinAdd;
//   int productPrice;
//   int deliveryCharge;
//   String img;
//   int mInAdd;
//   String tiMe;
//   int delIveryCharge;
//   int deliveryCHarge;
//   double rAting;
//   int purpleMaxAdd;
//   int deliveryChargE;
//   int maxAdd;
//   String time;
//   int deliVeryCharge;
//   int priCe;
//   int price;
//   String productName;
//   int minAdd;
//   String namE;
//   String purpleTime;
//   double raTing;
//   String nAme;
//   int maxADd;
//   String naMe;
//   int maXAdd;
//   int dEliveryCharge;
//   int productDeliveryCharge;
//
//   Product({
//     required this.name,
//     required this.productTime,
//     required this.rating,
//     required this.productMaxAdd,
//     required this.productMinAdd,
//     required this.productPrice,
//     required this.deliveryCharge,
//     required this.img,
//     required this.mInAdd,
//     required this.tiMe,
//     required this.delIveryCharge,
//     required this.deliveryCHarge,
//     required this.rAting,
//     required this.purpleMaxAdd,
//     required this.deliveryChargE,
//     required this.maxAdd,
//     required this.time,
//     required this.deliVeryCharge,
//     required this.priCe,
//     required this.price,
//     required this.productName,
//     required this.minAdd,
//     required this.namE,
//     required this.purpleTime,
//     required this.raTing,
//     required this.nAme,
//     required this.maxADd,
//     required this.naMe,
//     required this.maXAdd,
//     required this.dEliveryCharge,
//     required this.productDeliveryCharge,
//   });
//
//   Product copyWith({
//     String? name,
//     String? productTime,
//     double? rating,
//     int? productMaxAdd,
//     int? productMinAdd,
//     int? productPrice,
//     int? deliveryCharge,
//     String? img,
//     int? mInAdd,
//     String? tiMe,
//     int? delIveryCharge,
//     int? deliveryCHarge,
//     double? rAting,
//     int? purpleMaxAdd,
//     int? deliveryChargE,
//     int? maxAdd,
//     String? time,
//     int? deliVeryCharge,
//     int? priCe,
//     int? price,
//     String? productName,
//     int? minAdd,
//     String? namE,
//     String? purpleTime,
//     double? raTing,
//     String? nAme,
//     int? maxADd,
//     String? naMe,
//     int? maXAdd,
//     int? dEliveryCharge,
//     int? productDeliveryCharge,
//   }) =>
//       Product(
//         name: name ?? this.name,
//         productTime: productTime ?? this.productTime,
//         rating: rating ?? this.rating,
//         productMaxAdd: productMaxAdd ?? this.productMaxAdd,
//         productMinAdd: productMinAdd ?? this.productMinAdd,
//         productPrice: productPrice ?? this.productPrice,
//         deliveryCharge: deliveryCharge ?? this.deliveryCharge,
//         img: img ?? this.img,
//         mInAdd: mInAdd ?? this.mInAdd,
//         tiMe: tiMe ?? this.tiMe,
//         delIveryCharge: delIveryCharge ?? this.delIveryCharge,
//         deliveryCHarge: deliveryCHarge ?? this.deliveryCHarge,
//         rAting: rAting ?? this.rAting,
//         purpleMaxAdd: purpleMaxAdd ?? this.purpleMaxAdd,
//         deliveryChargE: deliveryChargE ?? this.deliveryChargE,
//         maxAdd: maxAdd ?? this.maxAdd,
//         time: time ?? this.time,
//         deliVeryCharge: deliVeryCharge ?? this.deliVeryCharge,
//         priCe: priCe ?? this.priCe,
//         price: price ?? this.price,
//         productName: productName ?? this.productName,
//         minAdd: minAdd ?? this.minAdd,
//         namE: namE ?? this.namE,
//         purpleTime: purpleTime ?? this.purpleTime,
//         raTing: raTing ?? this.raTing,
//         nAme: nAme ?? this.nAme,
//         maxADd: maxADd ?? this.maxADd,
//         naMe: naMe ?? this.naMe,
//         maXAdd: maXAdd ?? this.maXAdd,
//         dEliveryCharge: dEliveryCharge ?? this.dEliveryCharge,
//         productDeliveryCharge: productDeliveryCharge ?? this.productDeliveryCharge,
//       );
//
//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//     name: json["name"],
//     productTime: json["time"],
//     rating: json["rating"]?.toDouble(),
//     productMaxAdd: json["max_add"],
//     productMinAdd: json["min_add"],
//     productPrice: json["price"],
//     deliveryCharge: json["delivery_charge"],
//     img: json["img"],
//     mInAdd: json["m in_add"],
//     tiMe: json["ti me"],
//     delIveryCharge: json["del ivery_charge"],
//     deliveryCHarge: json["delivery_c harge"],
//     rAting: json["r ating"]?.toDouble(),
//     purpleMaxAdd: json["max_add "],
//     deliveryChargE: json["delivery_charg e"],
//     maxAdd: json["max_ add"],
//     time: json[" time"],
//     deliVeryCharge: json["deli very_charge"],
//     priCe: json["pri ce"],
//     price: json[" price"],
//     productName: json["name "],
//     minAdd: json["min _add"],
//     namE: json["nam e"],
//     purpleTime: json["time "],
//     raTing: json["ra ting"]?.toDouble(),
//     nAme: json["n ame"],
//     maxADd: json["max_a dd"],
//     naMe: json["na me"],
//     maXAdd: json["ma x_add"],
//     dEliveryCharge: json["d elivery_charge"],
//     productDeliveryCharge: json["delivery_charge "],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "time": productTime,
//     "rating": rating,
//     "max_add": productMaxAdd,
//     "min_add": productMinAdd,
//     "price": productPrice,
//     "delivery_charge": deliveryCharge,
//     "img": img,
//     "m in_add": mInAdd,
//     "ti me": tiMe,
//     "del ivery_charge": delIveryCharge,
//     "delivery_c harge": deliveryCHarge,
//     "r ating": rAting,
//     "max_add ": purpleMaxAdd,
//     "delivery_charg e": deliveryChargE,
//     "max_ add": maxAdd,
//     " time": time,
//     "deli very_charge": deliVeryCharge,
//     "pri ce": priCe,
//     " price": price,
//     "name ": productName,
//     "min _add": minAdd,
//     "nam e": namE,
//     "time ": purpleTime,
//     "ra ting": raTing,
//     "n ame": nAme,
//     "max_a dd": maxADd,
//     "na me": naMe,
//     "ma x_add": maXAdd,
//     "d elivery_charge": dEliveryCharge,
//     "delivery_charge ": productDeliveryCharge,
//   };
// }
