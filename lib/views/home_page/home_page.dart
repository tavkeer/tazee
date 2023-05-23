import 'package:tazee/export_screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //google sign in controller
    GoogleSignController googleSignController = Get.put(GoogleSignController());

    //email sign in controller
    EmailSignController emailSignController = Get.put(EmailSignController());

    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Color(0xFFEFEBE9),
        ),
        backgroundColor: const Color(0xFFEFEBE9),
      ),
      bottomNavigationBar: FloatingBottomNavBar(width: width),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: MyButton(
            text: "Signout",
            onTap: () {
              googleSignController.signout();
              emailSignController.signout();
            },
          ),
        ),
      ),
    );
  }
}
