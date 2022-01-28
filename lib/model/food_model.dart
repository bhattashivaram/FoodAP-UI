import 'package:foodapp/Detail/detail.dart';

class FoodModel {
  String name;
  double price;
  String description;
  double rating;
  String image;

  FoodModel(
      {required this.description,
      required this.image,
      required this.name,
      required this.price,
      required this.rating});
}

final List<FoodModel> foodList = [
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "assets/butter.jpg",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Chicken Sharma",
    price: 12.99,
    rating: 4.5,
    image: "assets/istock.jpg",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "assets/murgha.jpg",
    description: LOREM_IPSUM,
  ),
  FoodModel(
    name: "Cream and Corn Soup",
    price: 29.99,
    rating: 4.5,
    image: "assets/paratha.jpg",
    description: LOREM_IPSUM,
  ),
];
