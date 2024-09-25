import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> recipes = [
    {'name': 'Spaghetti Bolognese', 'ingredients': 'Pasta, Tomato, Meat', 'instructions': 'Cook for 30 minutes'},
    {'name': 'Chicken Curry', 'ingredients': 'Chicken, Curry Powder, Coconut Milk', 'instructions': 'Cook for 40 minutes'},
    {'name': 'Grilled Cheese Sandwich', 'ingredients': 'Bread, Cheese, Butter', 'instructions': 'Grill for 5 minutes'},
  ];

  // Use a Set to keep track of favorite recipe names (or IDs)
  Set<String> favoriteRecipes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Navigate to the FavoritesScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesScreen(favoriteRecipes: favoriteRecipes)),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              // Navigate to the DetailsScreen and pass recipe data and favorite status
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipe: recipes[index],
                    isFavorite: favoriteRecipes.contains(recipes[index]['name']),
                    onFavoriteToggle: (isFavorite) {
                      setState(() {
                        if (isFavorite) {
                          favoriteRecipes.add(recipes[index]['name']!);
                        } else {
                          favoriteRecipes.remove(recipes[index]['name']!);
                        }
                      });
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
