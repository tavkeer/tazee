import 'package:tazee/export_screens.dart';

class CategoryListOne extends StatelessWidget {
  const CategoryListOne({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomContainer(
            imgPath: 'assets/camping_s.png',
            desc: "Camping",
            width: width * 0.45,
          ),
          CustomContainer(
            imgPath: 'assets/hiking_s.png',
            desc: "Hiking",
            width: width * 0.33,
          ),
          CustomContainer(
            imgPath: 'assets/alpine_lakes_s.jpeg',
            desc: "Alpine Lakes",
            width: width * 0.45,
          ),
        ],
      ),
    );
  }
}
