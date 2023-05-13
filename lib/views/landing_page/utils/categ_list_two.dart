import 'package:tazee/export_screens.dart';

class CategoryListTwo extends StatelessWidget {
  const CategoryListTwo({
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
            imgPath: 'assets/alpine_lakes_s.jpeg',
            desc: "Mountain Passes",
            width: width * 0.6,
          ),
          CustomContainer(
            imgPath: 'assets/camping_s.png',
            desc: "Peaks",
            width: width * 0.6,
          ),
          CustomContainer(
            imgPath: 'assets/hiking_s.png',
            desc: "Alpine Meadows",
            width: width * 0.6,
          ),
          CustomContainer(
            imgPath: 'assets/alpine_lakes_s.jpeg',
            desc: "Glaciers",
            width: width * 0.6,
          ),
        ],
      ),
    );
  }
}
