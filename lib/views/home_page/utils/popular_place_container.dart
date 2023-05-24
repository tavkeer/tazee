import 'package:tazee/export_screens.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
    required this.width,
    required this.location,
    required this.imgPath,
    required this.place,
  }) : super(key: key);

  final double width;
  final String location;
  final String imgPath;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 0.27,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: const Color(0xff304352).withOpacity(0.3),
        color: Colors.white30,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        image: const DecorationImage(
          image: AssetImage('assets/tint.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place,
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.ubuntu().fontFamily,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.red.shade300,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: width * 0.06,
                              fontFamily: GoogleFonts.urbanist().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
