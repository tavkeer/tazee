import 'package:tazee/export_screens.dart';

class BottomNav extends StatelessWidget {
  final NavController navController;
  const BottomNav({
    Key? key,
    required this.navController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Align(
        alignment: const Alignment(0.0, 0.98),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: SizedBox(
            height: 75,
            child: Obx(
              () => BottomNavigationBar(
                iconSize: 30,
                backgroundColor: Colors.black.withOpacity(0.8),
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: navController.index.value,
                onTap: (value) {
                  navController.index.value = value;
                },
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: Colors.black.withOpacity(0.8),
                      icon: const Icon(Icons.home),
                      label: 'Home'),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.8),
                    icon: const Icon(Icons.location_on_rounded),
                    label: 'Navigation',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.black.withOpacity(0.8),
                    icon: const Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
