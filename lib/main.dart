import 'export_screens.dart';

void main() async {
  //for firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //for status bar color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFEFEBE9),
    ),
  );

  //running widget tree
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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFEFEBE9),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFEFEBE9),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
