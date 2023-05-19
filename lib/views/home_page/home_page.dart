import 'package:tazee/controllers/email_signin_controller.dart';
import 'package:tazee/export_screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignController googleSignController = Get.put(GoogleSignController());
    EmailSignController emailSignController = Get.put(EmailSignController());
    return Scaffold(
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
