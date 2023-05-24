import 'package:tazee/export_screens.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.4,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        scrollDirection: Axis.horizontal,
        children: [
          CategoryListItem(
            name: "Camping",
            imgPath: "assets/camping_s.png",
            height: height,
            width: width,
          ),
          CategoryListItem(
            name: "Alpine Lakes",
            imgPath: "assets/alpine_lakes.jpeg",
            height: height,
            width: width,
          ),
          CategoryListItem(
            name: "Hiking",
            imgPath: "assets/pahalgam.jpeg",
            height: height,
            width: width,
          ),
          CategoryListItem(
            name: "Alpine Lakes",
            imgPath: "assets/gul.jpeg",
            height: height,
            width: width,
          ),
        ],
      ),
    );
  }
}
