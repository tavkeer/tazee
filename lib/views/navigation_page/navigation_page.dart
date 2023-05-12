import 'package:tazee/export_screens.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    NavController navController = Get.put(NavController());
    List pages = const [LandingPage(), MapPage(), ProfilePage()];
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => pages[navController.index.value],
          ),
          BottomNav(
            navController: navController,
          ),
        ],
      ),
    );
  }
}
