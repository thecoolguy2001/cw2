import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final Set<String> favoriteRecipes;

  FavoritesScreen({required this.favoriteRecipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: favoriteRecipes.isEmpty
          ? Center(child: Text('No favorites added yet.'))
          : ListView(
              children: favoriteRecipes.map((recipeName) {
                return ListTile(
                  title: Text(recipeName),
                );
              }).toList(),
            ),
    );
  }
}
