import 'package:flutter/material.dart';
import 'package:untitled8/home/Catiegories/CategoryWidget.dart';
import 'package:untitled8/home/Catiegories/categoriesData.dart';

typedef Categoryclikeitem = void Function(CategoryData categoryData);

class categories extends StatelessWidget {
  Categoryclikeitem categoryclikeitem;

  categories(this.categoryclikeitem);

  List<CategoryData> Categorie = CategoryData.getCategory();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Pick your category of interest',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      categoryclikeitem(Categorie[index]);
                    },
                    child: CategoryWidget(Categorie[index], index)),
                itemCount: Categorie.length,
              ),
            )
          ],
        ));
  }
}
