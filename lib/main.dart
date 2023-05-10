import 'package:tazee/views/navigation_page/navigation_page.dart';

import 'export_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
        fontFamily: GoogleFonts.indieFlower().fontFamily,
        // fontFamily: GoogleFonts.urbanist().fontFamily,
      ),
      home: const NavigationPage(),
    );
  }
}
