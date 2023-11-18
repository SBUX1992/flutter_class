import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_v2/components/recipe_list_item.dart';
import 'package:recipe_v2/components/recipe_menu.dart';
import 'package:recipe_v2/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made burger"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }
}

// 함수 만들어 보기
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white, // appbar 배경색 지정
    elevation: 1.0, // 튀어나온듯한 설정
    actions: [
      Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        CupertinoIcons.heart,
        color: Colors.red,
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
