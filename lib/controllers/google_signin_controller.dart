import 'package:tazee/export_screens.dart';
import 'dart:io';

class GoogleSignController extends GetxController {
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
          Get.offAll(const HomePage());
        }
      },
    );
  }

  signout() async {
    handleSignOut().then((user) {
      if (user != null) {
        debugPrint(user.toString());
        Get.offAll(const LoginPage());
      }
    });
  }

  handleSignOut() async {
    try {
      await GoogleSignIn().signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
