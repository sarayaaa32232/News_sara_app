import 'dart:ui';

class CategoryData {
  String id;
  String title;
  String ImageName;
  Color color;

  CategoryData(this.id, this.title, this.ImageName, this.color);

  static List<CategoryData> getCategory() {
    return [
      CategoryData('sports', 'Sports', 'sports.png', Color(0xFFC91C22)),
      CategoryData('general', 'General', 'politics.png', Color(0xFF003E90)),
      CategoryData('health', 'Health', 'health.png', Color(0xFFED1E79)),
      CategoryData('business', 'Business', 'business.png', Color(0xFFCF7E48)),
      CategoryData(
          'technology', 'Technology', 'technology.png', Color(0xFF4882CF)),
      CategoryData('science', 'Science', 'science.png', Color(0xFFF2D352)),
    ];
  }
}
