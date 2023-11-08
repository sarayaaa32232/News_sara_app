import 'package:flutter/material.dart';
import 'package:untitled8/Api/ApiManger.dart';
import 'package:untitled8/home/Catiegories/sourcetabWidget.dart';

import '../Catiegories/categoriesData.dart';

class CategoryDetils extends StatelessWidget {
  CategoryData category;

  CategoryDetils(this.category);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManger.getSource(category.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError || snapshot.data?.status == 'error') {
          return Center(
            child: Column(
              children: [
                Text(snapshot.data?.message ?? snapshot.error.toString()),
                ElevatedButton(onPressed: () {}, child: Text('try again')),
              ],
            ),
          );
        }

        var sourcesList = snapshot.data?.sources;
        return sourcetabWidget(sourcesList!);
      },
    );
  }
}
