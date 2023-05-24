import 'package:tazee/export_screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //google sign in controller
    // GoogleSignController googleSignController = Get.put(GoogleSignController());

    //email sign in controller
    // EmailSignController emailSignController = Get.put(EmailSignController());

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              //guide text
              Text(
                "Where do you want\nto go?",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                ),
              ),

              const SizedBox(height: 20),

              //search bar
              const SearchField(),

              const SizedBox(height: 20),

              //categories simple text
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                ),
              ),

              // const SizedBox(height: 10),

              //categories list
              CategoryList(height: height, width: width),

              // const SizedBox(height: 10),

              //Popular places text
              Text(
                "Popular Places",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                ),
              ),

              const SizedBox(height: 10),

              //popular places list
              PopularPlaces(
                width: width,
                place: "Gulmarag",
                location: "Anathnag",
                imgPath: 'assets/gul.jpeg',
              ),
              const SizedBox(height: 10),
              PopularPlaces(
                width: width,
                place: "Pahalgam",
                location: "Budgam",
                imgPath: 'assets/pahalgam.jpeg',
              ),
              const SizedBox(height: 10),
              PopularPlaces(
                width: width,
                place: "Gulmarag",
                location: "J&K",
                imgPath: 'assets/gul.jpeg',
              )
            ],
          ),
        ),
      ),
    );
  }
}


// SizedBox(
//   height: 100,
//   width: 200,
//   child: MyButton(
//     text: "Signout",
//     onTap: () {
//       googleSignController.signout();
//       emailSignController.signout();
//     },
//   ),
// ),
