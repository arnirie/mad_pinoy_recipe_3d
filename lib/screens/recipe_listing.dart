import 'package:flutter/material.dart';
import 'package:mad_pinoy_recipes_3d/models/category.dart';

class RecipeListingScreen extends StatelessWidget {
  RecipeListingScreen({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
        backgroundColor: category.color,
      ),
    );
  }
}
