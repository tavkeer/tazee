import 'package:tazee/export_screens.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.height,
    required this.width,
    required this.controller,
  });

  final double height;
  final double width;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),

          //plain text for reference
          const Text(
            "Let's Explore\nNow",
            style: TextStyle(
              fontSize: 45,
              height: 0.95,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          //search bar
          SearchBar(
            height: height,
            width: width,
            controler: controller,
          ),
          const SizedBox(height: 20),

          //plain text for reference
          const Text(
            "Travel Planning",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),

          //first category list
          CategoryListOne(width: width),
          const SizedBox(height: 10),

          //second category list
          CategoryListTwo(width: width),
          const SizedBox(height: 10),

          //plain text for reference
          const Text(
            "Popular Places",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),

          //popular places list
          PopularPlacesList(width: width),
          const SizedBox(height: 95),
        ],
      ),
    );
  }
}
