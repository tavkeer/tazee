import 'package:tazee/export_screens.dart';

class EmailSignController extends GetxController {
  signout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
    Get.offAll(const LoginPage());
  }
}
