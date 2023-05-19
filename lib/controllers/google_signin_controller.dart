import 'dart:io';
import 'package:tazee/export_screens.dart';
import 'package:tazee/views/home_page/home_page.dart';

class GoogleSignController extends GetxController {
  User? user;
  handleGoogleLogin() async {
    try {
      //internet not connected checkup

      await InternetAddress.lookup("www.google.com");
      //instance of gSignin
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      //instance of googleauth
      final GoogleSignInAuthentication? gAuth = await gUser?.authentication;

      //getting user details
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth?.accessToken,
        idToken: gAuth?.idToken,
      );

      //returning the credentials
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Error", "$e");
    }
  }

  signInWithGoogle() async {
    handleGoogleLogin().then(
      (user) {
        if (user != null) {
          debugPrint("GoogleloginSucess");
          Get.to(const HomePage());
        }
      },
    );
  }

  signout() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
