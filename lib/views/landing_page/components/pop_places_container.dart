import 'package:tazee/export_screens.dart';

class PopularPlacesContainer extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subtitle;
  final String rating;
  final double width;
  const PopularPlacesContainer({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: width * 0.4,
                    height: height,
                    child: Image.asset(
                      imgPath,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.5,
                  height: height,
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 8),
                          const Text(
                            "ratings",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            rating,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
