import 'export_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ScaffoldFeatureController);
    return GetMaterialApp(
      title:
          "This App is designed for finding the best hiking and tour places in the Kashmir Valley, which include the maps and the information about the specific or any random spot in the Valley!",
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,

        fontFamily: GoogleFonts.gloriaHallelujah().fontFamily,
        // fontFamily: GoogleFonts.inter().fontFamily,
        // fontFamily: GoogleFonts.permanentMarker().fontFamily,
        // fontFamily: GoogleFonts.mogra().fontFamily,
      ),
      home: const NavigationPage(),
    );
  }
}
