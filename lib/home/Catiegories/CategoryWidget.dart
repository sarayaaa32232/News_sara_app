import 'package:flutter/material.dart';
import 'package:untitled8/home/Catiegories/categoriesData.dart';

class CategoryWidget extends StatelessWidget {
  CategoryData Categorie;

  int index;

  CategoryWidget(this.Categorie, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Categorie.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(index.isEven ? 24 : 0),
            bottomRight: Radius.circular(index.isOdd ? 0 : 24),
          )),
      child: Column(
        children: [
          Image.asset(
            'assets/images/${Categorie.ImageName}',
            width: double.infinity,
            height: 120,
          ),
          Text(
            Categorie.title,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
