class CategoryModel {
  String name;
  String image;
  int totalItems;

  CategoryModel(
      {required this.image, required this.name, required this.totalItems});
}

final List<CategoryModel> categories = [
  CategoryModel(
    name: "Food",
    image: "assets/istock.jpg",
    totalItems: 129,
  ),
  CategoryModel(
    name: "Dessert",
    image: "assets/tandoori.jpg",
    totalItems: 45,
  ),
  CategoryModel(
    name: "Snacks",
    image: "assets/paratha.jpg",
    totalItems: 12,
  ),
  CategoryModel(
    name: "Meat",
    image: "assets/murgha.jpg",
    totalItems: 445,
  ),
  CategoryModel(
    name: "Street food",
    image: "assets/butter.jpg",
    totalItems: 23,
  ),
  CategoryModel(
    name: "Butter Chicken",
    image: "assets/butter.jpg",
    totalItems: 23,
  ),
];
