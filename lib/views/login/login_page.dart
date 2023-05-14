import 'package:tazee/export_screens.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignController controller = Get.put(GoogleSignController());
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            //app icon logo
            CircleAvatar(
              radius: 50,
              child: Image.asset('assets/icon.png'),
            ),
            SizedBox(height: 35, width: width),

            //welcome text
            const Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            //google signIn button
            ElevatedButton(
              onPressed: () => controller.signInWithGoogle(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                elevation: 5,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 10),

            //text
            const Text(
              "or Use email address",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 10),

            //wraping email and password field
            LoginInputFields(width: width),
            const SizedBox(height: 20),

            //login section
            SizedBox(
              height: 50,
              width: width * 0.72,
              child: ElevatedButton(
                onPressed: () => Get.offAll(const NavigationPage()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            //registration screen toggle
            InkWell(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        fontFamily: GoogleFonts.gloriaHallelujah().fontFamily,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Register now",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: GoogleFonts.gloriaHallelujah().fontFamily,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Get.offAll(const RegistrationPage()),
            )
          ],
        ),
      ),
    );
  }
}

class LoginInputFields extends StatelessWidget {
  const LoginInputFields({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),

          //email field
          Container(
            height: 50,
            width: width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10),
                border: InputBorder.none,
                prefixIcon: Icon(CupertinoIcons.mail),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Password",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),

          //password field
          Container(
            height: 50,
            width: width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10),
                border: InputBorder.none,
                prefixIcon: Icon(CupertinoIcons.lock_fill),
              ),
            ),
          ),
          const SizedBox(height: 5),

          //forgot password section
          InkWell(
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
