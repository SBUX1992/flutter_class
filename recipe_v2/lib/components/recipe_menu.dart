import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        // 정렬 처리
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          _buildMenuItem(Icons.fastfood, "Burger"),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      // 센터로 정렬(Column은 세로정렬)
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mIcon,
          color: Colors.red,
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.black87),
        ),
      ],
    ),
  );
}
