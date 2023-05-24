import 'package:tazee/export_screens.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset('assets/tint2.jpeg', fit: BoxFit.cover),
          ),
          SizedBox(
            height: height,
            width: width,
            child: const HomePage(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingBottomNavBar(width: width),
          ),
        ],
      ),
    );
  }
}
