// ignore_for_file: unnecessary_null_comparison

import 'package:tazee/export_screens.dart';

class EmailSignController extends GetxController {
  //for showing progress indicator or loading indicator
  RxBool isLoading = false.obs;

  changeLoading() {
    isLoading.value = !(isLoading.value);
  }

  //sign in function
  login(String email, String password) async {
    try {
      changeLoading();
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
        if (user != null) {
          Get.off(() => const HomePage());
        }
      });
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error Occured",
        "${e.message}",
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint(e.message);
    }
    changeLoading();
  }

  //signout function
  signout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
    Get.offAll(() => const LoginPage());
  }

  //keeping user signned in
  @override
  void onReady() {
    super.onReady();
    (loginStatus())
        ? Get.off(() => const HomePage())
        : Get.off(() => const LoginPage());
  }

  //keeping user signned in
  bool loginStatus() {
    if (FirebaseAuth.instance.currentUser != null) {
      return true;
    }
    return false;
  }

  //register user with email and password
  register(String email, String password) async {
    try {
      changeLoading();
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then(
        (user) {
          if (user != null) {
            Get.off(() => const HomePage());
          }
        },
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error Occured",
        "${e.message}",
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint(e.message);
    }
    changeLoading();
  }
}
