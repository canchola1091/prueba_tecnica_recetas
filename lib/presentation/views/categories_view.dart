import 'package:flutter/material.dart';
import 'package:prueba_tecnica_recetas/infraestructure/services/recipes_services.dart';
import 'package:prueba_tecnica_recetas/presentation/widgets/shared/custom_loading.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                RecipesServices.getCategoriesService();
              },
              child: const Text('Get Categories'),
            ),
            ElevatedButton(
              onPressed: () {
                RecipesServices.getRecipesByCategorieService();
              },
              child: const Text('Get Recipes by Categorie'),
            ),
            ElevatedButton(
              onPressed: () {
                RecipesServices.getRecipesByCategorieService();
              },
              child: const Text('Get Detail Recipe'),
            ),
          ],
        )
      ),
    );
  }
}