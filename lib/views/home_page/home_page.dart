import 'package:tazee/export_screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignController googleSignController = Get.put(GoogleSignController());
    EmailSignController emailSignController = Get.put(EmailSignController());
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Color(0xFFEFEBE9),
        ),
        backgroundColor: const Color(0xFFEFEBE9),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 500,
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
