import 'package:flutter/material.dart';
import 'package:foodapp/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                category.image,
                width: 45,
                height: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category.name,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text("${category.totalItems}+ items")
              ],
            ),
          )
        ],
      ),
    );
  }
}
