import 'package:flutter/material.dart';
import 'package:mad_pinoy_recipes_3d/models/category.dart';
import 'package:mad_pinoy_recipes_3d/screens/recipe_listing.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, required this.category});

  Category category;
  // String text;
  // Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(category.name);
        //open the RecipeListingScreen
        Navigator.push(context, MaterialPageRoute(
          builder: (_) {
            return RecipeListingScreen(
              category: category,
            );
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        // color: category.color,
        child: Text(
          category.name,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
