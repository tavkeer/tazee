import 'package:tazee/export_screens.dart';

class PopularPlacesList extends StatelessWidget {
  const PopularPlacesList({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularPlacesContainer(
            imgPath: 'assets/pahalgam.jpeg',
            title: "Pahalgam",
            subtitle: "Anatnag\nJ&K",
            rating: "4.5",
            width: width * 0.5,
          ),
          PopularPlacesContainer(
            imgPath: 'assets/gul.jpeg',
            title: "Gulmarag",
            subtitle: "Baramullah\nJ&K",
            rating: "4.5",
            width: width * 0.5,
          ),
          PopularPlacesContainer(
            imgPath: 'assets/pahalgam.jpeg',
            title: "Pahalgam",
            subtitle: "Anatnag\nJ&K",
            rating: "4.5",
            width: width * 0.5,
          ),
          PopularPlacesContainer(
            imgPath: 'assets/gul.jpeg',
            title: "Gulmarag",
            subtitle: "Baramullah\nJ&K",
            rating: "4.5",
            width: width * 0.5,
          ),
        ],
      ),
    );
  }
}
