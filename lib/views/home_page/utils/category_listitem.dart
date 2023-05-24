import 'package:tazee/export_screens.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
    required this.name,
    required this.imgPath,
    required this.height,
    required this.width,
  }) : super(key: key);
  final String name;

  final String imgPath;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      width: width * 0.65,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(3, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Column(
              children: [
                //image
                Expanded(
                  flex: 7,
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                  ),
                ),

                //text
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey.shade100,
                    child: Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.ubuntu().fontFamily,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
