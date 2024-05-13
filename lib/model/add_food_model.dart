import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AddFoodModel {
  String name;
  String restaurantUID;
  String description;
  String foodImageURL;
  bool isVegetarian;
  String price;
  AddFoodModel({
    required this.name,
    required this.restaurantUID,
    required this.description,
    required this.foodImageURL,
    required this.isVegetarian,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'restaurantUID': restaurantUID,
      'description': description,
      'foodImageURL': foodImageURL,
      'isVegetarian': isVegetarian,
      'price': price,
    };
  }

  factory AddFoodModel.fromMap(Map<String, dynamic> map) {
    return AddFoodModel(
      name: map['name'] as String,
      restaurantUID: map['restaurantUID'] as String,
      description: map['description'] as String,
      foodImageURL: map['foodImageURL'] as String,
      isVegetarian: map['isVegetarian'] as bool,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddFoodModel.fromJson(String source) =>
      AddFoodModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
