import 'package:flutter/material.dart';



class DetailsScreen extends StatefulWidget {
  final Map<String, String> recipe;
  final bool isFavorite;
  final Function(bool) onFavoriteToggle;  // Callback to notify about favorite state change

  DetailsScreen({
    required this.recipe,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;  // Initialize the local favorite status
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(widget.recipe['ingredients']!),
            SizedBox(height: 20),
            Text('Instructions:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(widget.recipe['instructions']!),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                  widget.onFavoriteToggle(isFavorite);  // Notify HomeScreen of the change
                });
              },
              child: Text(isFavorite ? 'Remove from Favorites' : 'Add to Favorites'),
            ),
          ],
        ),
      ),
    );
  }
}
