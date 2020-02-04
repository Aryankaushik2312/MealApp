import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class FavouriteScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;
  FavouriteScreen(this.favouriteMeals);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favouriteMeals.isEmpty) {
      return Container(
        child: Center(child: Text('Please Add some favourite meals')),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: widget.favouriteMeals[i].id,
            title: widget.favouriteMeals[i].title,
            imageUrl: widget.favouriteMeals[i].imageUrl,
            duration: widget.favouriteMeals[i].duration,
            complexity: widget.favouriteMeals[i].complexity,
            affordability: widget.favouriteMeals[i].affordability,
          );
        },
        itemCount: widget.favouriteMeals.length,
      );
    }
  }
}
