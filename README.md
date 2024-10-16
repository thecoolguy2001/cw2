## Building a Recipe Book App with Navigation
Objective: In this exercise, create a Flutter app with two screens. Then
implement navigation between the home screen (list of your favorite recipes)
and the details screen (viewing recipe details) while passing data between the
screens. This will be your design as long as the requirements and guidelines are
followed.

Requirements:
Two screens: HomeScreen and DetailsScreen.
HomeScreen should display a list of recipes.

DetailsScreen should display the details of a selected recipe.

Implement navigation between these screens and data passing.

Guidelines:

Start with a new Flutter project or use an existing one.

Create two Dart files for the HomeScreen and DetailsScreen.

Design the UI for each screen:

HomeScreen: Display a list of recipes (e.g., recipe names) and allow users
to tap on a recipe to navigate to the DetailsScreen.

DetailsScreen: Display the details of the selected recipe (e.g., ingredients
and instructions).

Extra Task for graduate students: Add a Favorite Recipe Feature
Add functionality that allows users to mark recipes as favorites and view a
list of their favorite recipes.

Requirements:

Allow users to mark or unmark a recipe as a favorite from the
DetailsScreen using a "Favorite" button.

Add a third screen, FavoritesScreen, which displays only the recipes
marked as favorites.

Implement navigation to the FavoritesScreen from the HomeScreen.

Guidelines:

Add a button on the HomeScreen labeled "View Favorites" to navigate to
the FavoritesScreen.

In the DetailsScreen, use a boolean variable to track whether a recipe is
marked as a favorite and toggle its state when the "Favorite" button is
pressed.
 Design the UI for the FavoritesScreen to display the list of recipes that
have been marked as favorites.
